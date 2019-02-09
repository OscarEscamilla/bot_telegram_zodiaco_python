#!/usr/bin/env python
# -*- coding: utf-8 -*-
from telegram.ext import Updater, CommandHandler, MessageHandler, Filters
import logging
import web
from emoji import emojize


# Enable logging
logging.basicConfig(format='%(asctime)s - %(name)s - %(levelname)s - %(message)s', level=logging.INFO)
logger = logging.getLogger(__name__)

# Database connection
db = web.database(
    dbn = 'mysql',
    host = 'localhost',
    db = 'zodiaco',
    user = 'root',
    pw = '',
    port = 3306
    )
 
#Samm17_bot 
token = '638896670:AAFx3gIIXypKJNSkeXZk3a2tQUlm1PVT0Uc' # aqi va la api (el token que me va devolver el boot)

# Define a few command handlers. These usually take the two arguments bot and
# update. Error handlers also receive the raised TelegramError object in error.
def start(bot, update): # tiene que ver con la linea 75
    username = update.message.from_user.username
    update.message.reply_text('Enterate de todo lo que el zodiaco tiene para ti: \n\n/zodiaco "tu_horoscopo"\n'+
                                '/info --> acerca de ')

def info(bot, update): 
    username = update.message.from_user.username
    update.message.reply_text('Enterate de todo lo que el zodiaco tiene para ti: \n\n/zodiaco "tu_horoscopo"\n'+
                                '/info --> acerca de ')

def search(update):
    text = update.message.text.split() #ddescompone el  mensaje que mande al usuario 
    username = update.message.from_user.username
    try:
        id_producto = text[1] # cast para convertir str a int
        print "Send info to {}".format(username)
        print "Key search {}".format(id_producto)
        result = db.select('horoscopos', where='nombre=$id_producto', vars=locals())[0] # permite reconocer el parametro con sign de $ 

        if id_producto == "leo":
            figura = "leo"
        elif id_producto == "acuario":
            figura = "aquarius"
        elif id_producto == "sagitario":
            figura = "sagittarius"
        elif id_producto == "picis":
            figura = "pisces"
        elif id_producto == "capricornio":
            figura = "capricorn"
        elif id_producto == "geminis":
            figura = "gemini"
        elif id_producto == "escorpion":
            figura = "scorpius"
        elif id_producto == "libra":
            figura = "libra"
        elif id_producto == "virgo":
            figura = "virgo"
        elif id_producto == "cancer":
            figura = "cancer"

        emoji = emojize(":"+ figura +":", use_aliases=True)
        fire = emojize(":fire:", use_aliases=True)
        chango = emojize(":hear_no_evil:", use_aliases=True)
        # el 0 permite solo enviar el primer registro que coincida 
        #print result
        #respuesta =  result.nombre + ": \n  \n " + result.mensaje
        #response = str(result[0]) + ", " + str(result[1]) + ", " + str(result[2])
        #print "***respuesta*** " + respuesta
        nom = result.nombre.upper()
        update.message.reply_text("**"+nom+"**  "+emoji+ '\n\n' + "__"+result.mensaje+"__"+chango +'\n\n'+"```"+result.frase+"```"+fire)
    except Exception as e:
        print "Error search: " + str(e.message)
        update.message.reply_text('La llave {} es incorreta'.format(id_producto))

def zodiaco(bot, update):
    search(update)

def echo(bot, update):
    update.message.reply_text(update.message.text)
    print update.message.text
    print update.message.date
    print update.message.from_user 
    print update.message.from_user.username
    
def error(bot, update, error):
    logger.warn('Update "%s" caused error "%s"' % (update, error))

    
def main():
    try:
        print 'S.A.M.M. init token'

        updater = Updater(token)

        # Get the dispatcher to register handlers
        dp = updater.dispatcher

        print 'S.A.M.M. init dispatcher'

        # on different commands - answer in Telegram ***comandos que usara nuetro boot***
        dp.add_handler(CommandHandler("start", start))
        dp.add_handler(CommandHandler("info", info))
        dp.add_handler(CommandHandler("zodiaco", zodiaco))        

        # on noncommand i.e message - echo the message on Telegram
        dp.add_handler(MessageHandler(Filters.text, echo))

        # log all errors --- almacena errores
        dp.add_error_handler(error) 

        # Start the Bot
        updater.start_polling()

        # Run the bot until the you presses Ctrl-C or the process receives SIGINT,
        # SIGTERM or SIGABRT. This should be used most of the time, since
        # start_polling() is non-blocking and will stop the bot gracefully.
        print 'S.A.M.M. ready' #pone el bot en modo de espera 
        updater.idle()
    except Exception as e:
        print "Error 100: ", e.message

if __name__ == '__main__':
    main()
