
week = input("Enter any day of the week: ")
week.islower()

print("The Day is", end=" ")
match week:
    case "monday" | "mon" | "mo":
        print("Monday")
    case "tuesday" | "tue" | "tu":
        print("Tuesday")
    case "wednesday" | "wed" | "we":
        print("Wednesday")
    case "thursday" | "thu" | "th":
        print("Thursday")
    case "friday" | "fri" | "fr":
        print("Friday")
    case "saturday" | "sat" | "sa":
        print("Saturday")
    case "sunday" | "sun" | "s":
        print("Sunday")
    case _: # you could also do 'default'
        print("Invalid Day")

