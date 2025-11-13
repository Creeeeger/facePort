.class abstract Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Landroid/widget/CalendarView$CalendarViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractCalendarViewDelegate"
.end annotation


# static fields
.field protected static final greylist-max-o DEFAULT_MAX_DATE:Ljava/lang/String; = "01/01/2100"

.field protected static final greylist-max-o DEFAULT_MIN_DATE:Ljava/lang/String; = "01/01/1900"


# instance fields
.field protected greylist-max-o mContext:Landroid/content/Context;

.field protected greylist-max-o mCurrentLocale:Ljava/util/Locale;

.field protected greylist-max-o mDelegator:Landroid/widget/CalendarView;


# direct methods
.method constructor greylist-max-o <init>(Landroid/widget/CalendarView;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mDelegator:Landroid/widget/CalendarView;

    iput-object p2, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o getFocusedMonthDateColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getSelectedWeekBackgroundColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getShowWeekNumber()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getShownWeekCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getUnfocusedMonthDateColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getWeekNumberColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getWeekSeparatorLineColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method protected greylist-max-o setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->mCurrentLocale:Ljava/util/Locale;

    return-void
.end method

.method public greylist-max-o setFocusedMonthDateColor(I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o setSelectedDateVerticalBar(I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public greylist-max-o setSelectedWeekBackgroundColor(I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o setShowWeekNumber(Z)V
    .locals 0

    return-void
.end method

.method public greylist-max-o setShownWeekCount(I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o setUnfocusedMonthDateColor(I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o setWeekNumberColor(I)V
    .locals 0

    return-void
.end method

.method public greylist-max-o setWeekSeparatorLineColor(I)V
    .locals 0

    return-void
.end method
