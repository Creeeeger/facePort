.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findChronometer(Landroid/view/View;Ljava/lang/String;)Landroid/widget/Chronometer;
    .locals 3

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/Chronometer;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/Chronometer;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOngoingCardWidth(Landroid/content/Context;)I
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070c12

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->isSubDisplay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c11

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c10

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    :goto_0
    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    :goto_1
    return p0
.end method

.method public static isActionStyle(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActionType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPrimaryChronometer(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerPosition:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setExpandButtonColor(Landroid/widget/RemoteViews;)V
    .locals 4

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lnoticolorpicker/NotificationColorPicker;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnoticolorpicker/NotificationColorPicker;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Lnoticolorpicker/NotificationColorPicker;->getTextColor(IZZ)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const/16 v3, 0x99

    invoke-static {v3, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    const v1, 0x10202da

    const-string/jumbo v2, "setDefaultTextColor"

    invoke-virtual {p0, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static updateOngoingChronometer(Landroid/view/View;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v2

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->isActionStyle(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerTag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/Chronometer;

    const/4 v8, 0x0

    const-string/jumbo v9, "sec"

    const v10, 0x7f070c0e

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, -0x1

    const v11, 0x7f0a0cf7

    const v12, 0x7f060525

    const v7, 0x7f0a0cf6

    sget-object v16, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    if-eqz v6, :cond_2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    if-eqz v0, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v15, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v14}, Landroid/widget/Chronometer;->setSingleLine(Z)V

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v5}, Landroid/widget/Chronometer;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->isPrimaryChronometer(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v7}, Landroid/widget/Chronometer;->setId(I)V

    invoke-virtual {v4, v12}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/Chronometer;->setTextColor(I)V

    invoke-static {v4, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->updatePrimaryChronometerFont(Landroid/content/Context;Landroid/widget/Chronometer;ZZ)V

    :cond_0
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_7

    iget v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerPosition:I

    if-ne v1, v13, :cond_7

    invoke-virtual {v0, v11}, Landroid/widget/Chronometer;->setId(I)V

    if-eqz v3, :cond_1

    const v11, 0x7f06051a

    goto :goto_0

    :cond_1
    const v11, 0x7f060527

    :goto_0
    invoke-virtual {v4, v11}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setTextColor(I)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v9, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    const/16 v3, 0x190

    invoke-static {v2, v3, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->updateOngoingNotificationFont(Landroid/content/Context;Landroid/widget/TextView;ILandroid/graphics/Typeface;)V

    goto/16 :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->isPrimaryChronometer(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "expandPrimaryContainer"

    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->findChronometer(Landroid/view/View;Ljava/lang/String;)Landroid/widget/Chronometer;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v5, "collapsedPrimaryContainer"

    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->findChronometer(Landroid/view/View;Ljava/lang/String;)Landroid/widget/Chronometer;

    move-result-object v5

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/widget/Chronometer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v15, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5, v14}, Landroid/widget/Chronometer;->setSingleLine(Z)V

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/Chronometer;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v5, v7}, Landroid/widget/Chronometer;->setId(I)V

    invoke-virtual {v4, v12}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Chronometer;->setTextColor(I)V

    invoke-static {v4, v5, v2, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->updatePrimaryChronometerFont(Landroid/content/Context;Landroid/widget/Chronometer;ZZ)V

    :cond_4
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_7

    iget v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerPosition:I

    if-ne v1, v13, :cond_7

    const-string v1, "expandSecondaryContainer"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->findChronometer(Landroid/view/View;Ljava/lang/String;)Landroid/widget/Chronometer;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "collapsedSecondaryContainer"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->findChronometer(Landroid/view/View;Ljava/lang/String;)Landroid/widget/Chronometer;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v15, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v14}, Landroid/widget/Chronometer;->setSingleLine(Z)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/Chronometer;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v1, v11}, Landroid/widget/Chronometer;->setId(I)V

    if-eqz v3, :cond_6

    const v11, 0x7f06051a

    goto :goto_1

    :cond_6
    const v11, 0x7f060527

    :goto_1
    invoke-virtual {v4, v11}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Chronometer;->setTextColor(I)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v9, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    const/16 v3, 0x190

    invoke-static {v2, v3, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v4, v1, v0, v2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->updateOngoingNotificationFont(Landroid/content/Context;Landroid/widget/TextView;ILandroid/graphics/Typeface;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public static updateOngoingNotificationFont(Landroid/content/Context;Landroid/widget/TextView;ILandroid/graphics/Typeface;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3f4ccccd    # 0.8f

    const v2, 0x3fa66666    # 1.3f

    invoke-static {p0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    int-to-float p2, p2

    mul-float/2addr p2, p0

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz p3, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public static updatePrimaryChronometerFont(Landroid/content/Context;Landroid/widget/Chronometer;ZZ)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez p2, :cond_0

    const v1, 0x7f070c0a

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const v1, 0x7f070c0c

    goto :goto_0

    :cond_1
    const v1, 0x7f070c0d

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    const/16 v1, 0x190

    goto :goto_1

    :cond_2
    const/16 v1, 0x258

    :goto_1
    const-string/jumbo v2, "sec"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v2, v1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/Chronometer;->setTypeface(Landroid/graphics/Typeface;)V

    int-to-float p0, v0

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p0, p2

    invoke-virtual {p1, v3, p0}, Landroid/widget/Chronometer;->setTextSize(IF)V

    goto :goto_2

    :cond_3
    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->updateOngoingNotificationFont(Landroid/content/Context;Landroid/widget/TextView;ILandroid/graphics/Typeface;)V

    :goto_2
    return-void
.end method
