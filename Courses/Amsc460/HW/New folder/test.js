function calculateDaysbetweenDates(date1, date2) {
    var oneDay = 24 * 60 * 60 * 1000;
    var diff = date2.getTime() - date1.getTime();
    return Math.round(diff / oneDay);
}