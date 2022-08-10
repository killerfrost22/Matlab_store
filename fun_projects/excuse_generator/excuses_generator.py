import random

intro = ["Sorry I can't come, ", "Please forgive my absence, ", "This is going to sound crazy but, ", "Get this : ", "I can't go because, ", "I know you are going to hate me but, ", "I was minding my own business and boom, ", "I feel terrible but, ", "I regretfully can't attend, ", "This is going to sound like an excuse but, "]
scapegoat = ["my nephew ", "the ghost of Hitler ", "the Pope ", "my ex ", "a high school marching band ", "Bill Gates ", "a sad clown ", "the kid from Home Alone ", "a professional Cricket team ", "my Tinder date "]
delay = ["just shit my bed.", "died in front of me.", "won't stop telling me knock knock jokes.", "started having a nervous breakdown.", "gave me Syphilis.", "poured lemonade in my gas tank.", "stabbed me.", "found my box of human teeth.", "stole my bicycle.", "posted my childhood photos on Instagram."]

a = random.randint(0, 9)
b = random.randint(0, 9)
c = random.randint(0, 9)

print(intro[a] + scapegoat[b] + delay[c])