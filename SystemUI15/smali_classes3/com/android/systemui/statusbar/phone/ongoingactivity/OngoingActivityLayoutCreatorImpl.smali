.class public final Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    return-void
.end method

.method public static bindSecondaryInfoIcon(Landroid/widget/RemoteViews;Landroid/graphics/drawable/Icon;)V
    .locals 1

    const v0, 0x7f0a0871

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_1
    return-void
.end method

.method public static canShowSecondaryIcon(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mDescription:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondaryInfo:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerPosition:I

    if-ne p0, v0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static isBottomBtnActionStyle(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3fa66666    # 1.3f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_3

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0x5a0

    if-lt v0, v1, :cond_0

    const/16 v0, 0x2a8

    goto :goto_0

    :cond_0
    const/16 v1, 0x2d1

    if-gt v1, v0, :cond_1

    const/16 v1, 0x439

    if-ge v0, v1, :cond_1

    const/16 v0, 0x1fe

    goto :goto_0

    :cond_1
    const/16 v0, 0x154

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-lt p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method


# virtual methods
.method public final bindProfileBadge(Landroid/widget/RemoteViews;I)V
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$getDefaultProfileBadgeDrawable$supplier$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil$getDefaultProfileBadgeDrawable$supplier$1;-><init>(Landroid/content/Context;I)V

    const-string p0, "NOTIFICATION"

    const-string p2, "WORK_PROFILE_ICON"

    const-string v2, "SOLID_COLORED"

    invoke-virtual {v1, p2, v2, p0, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    const p2, 0x10204bf

    invoke-virtual {p1, p2, p0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_2
    return-void
.end method

.method public final bindTime(Landroid/widget/RemoteViews;Ljava/lang/Long;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    const-string/jumbo p2, "setTime"

    const v2, 0x102064e

    invoke-virtual {p1, v2, p2, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    const p2, 0x7f060533

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, v2, p0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const/4 p0, 0x0

    invoke-virtual {p1, v2, p0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method public final createCollapsedView(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Landroid/widget/RemoteViews;
    .locals 8

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d027f

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v1, 0x7f0a0847

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->setOngoingNotificationIcon(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;Landroid/widget/RemoteViews;I)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPrimaryInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    const v2, 0x1020016

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mWhen:Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->bindTime(Landroid/widget/RemoteViews;Ljava/lang/Long;)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    iget v4, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mUserId:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->bindProfileBadge(Landroid/widget/RemoteViews;I)V

    :cond_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondaryInfo:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const v4, 0x7f0a084a

    const v5, 0x7f0a084b

    if-lez v2, :cond_2

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_2
    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mDescription:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_3
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->canShowSecondaryIcon(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondaryInfoIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->bindSecondaryInfoIcon(Landroid/widget/RemoteViews;Landroid/graphics/drawable/Icon;)V

    goto :goto_1

    :cond_4
    const v1, 0x7f0a0871

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_1
    iget v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActionType:I

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v1, v6, :cond_5

    iget-object v6, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    if-nez v1, :cond_5

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->makeIconButtons(Ljava/util/ArrayList;)Landroid/widget/RemoteViews;

    move-result-object v1

    const v6, 0x7f0a0848

    invoke-virtual {v0, v6, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    invoke-virtual {v0, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x102064e

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x10204bf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    const v6, 0x7f06051a

    invoke-virtual {v1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string/jumbo v1, "setMaxLines"

    invoke-virtual {v0, v5, v1, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_5
    const v1, 0x10202da

    const-string/jumbo v6, "setExpanded"

    invoke-virtual {v0, v1, v6, v3}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    sget-object v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->setExpandButtonColor(Landroid/widget/RemoteViews;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->updateCollapsedViewFontSize(Landroid/widget/RemoteViews;)V

    iget-object p0, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerView:Landroid/widget/RemoteViews;

    if-eqz p0, :cond_7

    iget p1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerPosition:I

    if-ne p1, v7, :cond_6

    const v1, 0x1020464

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0a0849

    invoke-virtual {v0, v1, p0, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;I)V

    :cond_6
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v0, v5, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v0, v4, p0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    :cond_7
    return-object v0
.end method

.method public final createCoverScreenView(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Landroid/widget/RemoteViews;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d0280

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    const-string v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    const-string v4, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    aget-object v3, v3, v5

    invoke-virtual {v4, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    :goto_0
    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomExpandedCardView:Landroid/widget/RemoteViews;

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    const v0, 0x7f0a0852

    invoke-virtual {v2, v0, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    invoke-virtual {v2, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createExpandView: use full custom view ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "{OngoingActivityLayoutCreator}"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0a0864

    invoke-virtual {v2, v1, v0}, Landroid/widget/RemoteViews;->removeAllViewsExceptId(II)V

    return-object v2

    :cond_1
    const v4, 0x7f0a0857

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->setOngoingNotificationIcon(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;Landroid/widget/RemoteViews;I)V

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v8

    sget-object v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->isActionStyle(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z

    move-result v9

    iget-object v10, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActions:Ljava/util/ArrayList;

    if-eqz v10, :cond_2

    move v10, v5

    goto :goto_1

    :cond_2
    move v10, v6

    :goto_1
    iget v11, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgress:I

    const/4 v12, -0x1

    if-le v11, v12, :cond_3

    move v13, v5

    goto :goto_2

    :cond_3
    move v13, v6

    :goto_2
    const v14, 0x7f0a084d

    const/4 v15, 0x5

    const v12, 0x7f0a0850

    const v4, 0x7f0a0859

    if-eqz v9, :cond_5

    const v9, 0x7f070c39

    invoke-virtual {v2, v12, v15, v9}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    if-eqz v8, :cond_4

    const v8, 0x7f070bdb

    goto :goto_3

    :cond_4
    const v8, 0x7f070bda

    :goto_3
    invoke-virtual {v2, v14, v5, v8}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    goto :goto_5

    :cond_5
    const v9, 0x7f070c3c

    invoke-virtual {v2, v12, v15, v9}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    const/4 v9, 0x3

    if-nez v10, :cond_6

    if-eqz v13, :cond_7

    :cond_6
    const v10, 0x7f0a0857

    invoke-virtual {v2, v10, v9, v6}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    :cond_7
    const v10, 0x7f070be3

    if-eqz v8, :cond_8

    const v12, 0x7f070be6

    goto :goto_4

    :cond_8
    move v12, v10

    :goto_4
    invoke-virtual {v2, v4, v5, v12}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    iget-object v12, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActions:Ljava/util/ArrayList;

    if-nez v12, :cond_9

    if-eqz v8, :cond_9

    const v10, 0x7f070be9

    :cond_9
    invoke-virtual {v2, v14, v9, v10}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    :goto_5
    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPrimaryInfo:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_a

    invoke-virtual {v2, v4, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_a
    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondaryInfo:Ljava/lang/String;

    invoke-static {v8}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const v10, 0x7f0a085d

    const v12, 0x7f0a0860

    const v13, 0x7f0a085e

    if-lez v9, :cond_c

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->isPrimaryChronometer(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->isActionStyle(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v9

    if-eqz v9, :cond_b

    const v9, 0x7f0a085f

    invoke-virtual {v2, v12, v9}, Landroid/widget/RemoteViews;->removeAllViewsExceptId(II)V

    invoke-virtual {v2, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v9, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_6

    :cond_b
    invoke-virtual {v2, v12, v13}, Landroid/widget/RemoteViews;->removeAllViewsExceptId(II)V

    invoke-virtual {v2, v13, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v13, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_6
    invoke-virtual {v2, v10, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_c
    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mDescription:Ljava/lang/String;

    invoke-static {v8}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v14, 0x8

    if-lez v9, :cond_d

    const v9, 0x7f0a0853

    invoke-virtual {v2, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v9, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v2, v10, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->canShowSecondaryIcon(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondaryInfoIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v2, v8}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->bindSecondaryInfoIcon(Landroid/widget/RemoteViews;Landroid/graphics/drawable/Icon;)V

    goto :goto_7

    :cond_e
    const v8, 0x7f0a0871

    invoke-virtual {v2, v8, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_7
    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondIcon:Landroid/graphics/drawable/Icon;

    if-eqz v8, :cond_f

    const v9, 0x7f0a085c

    invoke-virtual {v2, v9, v8}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    invoke-virtual {v2, v9, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_f
    const/4 v8, -0x1

    if-le v11, v8, :cond_13

    const v8, 0x7f0a0863

    invoke-virtual {v2, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v8, 0x7f0a085b

    invoke-virtual {v2, v8, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressSegments:[Landroid/os/Parcelable;

    array-length v9, v8

    const/16 v15, 0x64

    if-lez v9, :cond_11

    int-to-float v9, v11

    iget v11, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressMax:I

    if-lez v11, :cond_10

    int-to-float v15, v15

    mul-float/2addr v9, v15

    int-to-float v11, v11

    div-float/2addr v9, v11

    :cond_10
    move/from16 v19, v9

    new-instance v9, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    iget-object v15, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressSegmentIcon:Landroid/graphics/drawable/Icon;

    iget v12, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressColor:I

    move-object/from16 v16, v9

    move-object/from16 v17, v11

    move-object/from16 v18, v8

    move-object/from16 v20, v15

    move/from16 v21, v12

    invoke-direct/range {v16 .. v21}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;-><init>(Landroid/content/Context;[Landroid/os/Parcelable;FLandroid/graphics/drawable/Icon;I)V

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->makeImage()Landroid/graphics/Bitmap;

    move-result-object v8

    const v9, 0x7f0a0861

    invoke-virtual {v2, v9, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v2, v9, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_9

    :cond_11
    iget v8, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressMax:I

    if-nez v8, :cond_12

    goto :goto_8

    :cond_12
    move v15, v8

    :goto_8
    iget-boolean v8, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressIndeterminate:Z

    const v9, 0x7f0a0862

    invoke-virtual {v2, v9, v15, v11, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    invoke-virtual {v2, v9, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_13
    :goto_9
    iget v8, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActionType:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_16

    iget-object v9, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActions:Ljava/util/ArrayList;

    if-eqz v9, :cond_16

    if-nez v8, :cond_14

    invoke-virtual {v0, v9, v2, v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->updateIconButtonRemoteView(Ljava/util/ArrayList;Landroid/widget/RemoteViews;Z)V

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    const v12, 0x7f06051a

    invoke-virtual {v11, v12}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v2, v13, v11}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string/jumbo v11, "setMaxLines"

    invoke-virtual {v2, v4, v11, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual {v2, v13, v11, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_14
    if-ne v8, v5, :cond_16

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v11, v6

    :goto_a
    const v12, 0x7f0a084f

    if-ge v11, v8, :cond_15

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/Notification$Action;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v13, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->makeTextButtonRemoteView(Landroid/app/Notification$Action;Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_15
    invoke-virtual {v2, v12, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_16
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v7, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->updateExpandViewFontSize(Landroid/widget/RemoteViews;ZLandroid/content/Context;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_18

    iget v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerPosition:I

    if-ne v1, v5, :cond_17

    invoke-virtual {v2, v4, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f0a085a

    invoke-virtual {v2, v3, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    :cond_17
    const/4 v3, 0x2

    if-ne v1, v3, :cond_18

    invoke-virtual {v2, v10, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f0a0860

    invoke-virtual {v2, v1}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    invoke-virtual {v2, v1, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v2, v10, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    :cond_18
    return-object v2
.end method

.method public final createExpandView(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Landroid/widget/RemoteViews;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d0281

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomExpandedCardView:Landroid/widget/RemoteViews;

    const/4 v4, 0x0

    const v5, 0x7f0a0864

    if-eqz v3, :cond_0

    const v0, 0x7f0a0852

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    invoke-virtual {v2, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createExpandView: use full custom view ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotiID:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "{OngoingActivityLayoutCreator}"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v5, v0}, Landroid/widget/RemoteViews;->removeAllViewsExceptId(II)V

    return-object v2

    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->isActionStyle(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z

    move-result v3

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->isBottomBtnActionStyle(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v3, :cond_1

    if-nez v6, :cond_1

    move v3, v7

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v6

    if-eqz v3, :cond_2

    new-instance v8, Landroid/widget/RemoteViews;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0d0279

    invoke-direct {v8, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    new-instance v8, Landroid/widget/RemoteViews;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0d0282

    invoke-direct {v8, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_1
    invoke-virtual {v2, v5, v8}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    const v5, 0x7f0a0857

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->setOngoingNotificationIcon(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;Landroid/widget/RemoteViews;I)V

    const v8, 0x7f0a085a

    const/4 v9, 0x3

    const v10, 0x7f0a085c

    const v11, 0x7f0a085d

    if-eqz v6, :cond_3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v11, v7, v4}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    const v3, 0x7f070be5

    invoke-virtual {v2, v5, v9, v3}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    :cond_4
    invoke-virtual {v2, v8, v7, v4}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    invoke-virtual {v2, v10, v7, v4}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    :cond_5
    :goto_2
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActions:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    const v3, 0x7f0a084d

    const v5, 0x7f070be9

    invoke-virtual {v2, v3, v9, v5}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    :cond_6
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070c07

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mAppName:Ljava/lang/String;

    const v9, 0x10201fa

    invoke-virtual {v2, v9, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v9, v4, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    const v5, 0x7f060533

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v9, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mWhen:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->bindTime(Landroid/widget/RemoteViews;Ljava/lang/Long;)V

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mPrimaryInfo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v9, 0x7f0a0859

    if-lez v5, :cond_7

    invoke-virtual {v2, v9, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v9, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_7
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondaryInfo:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const v12, 0x7f0a0860

    const v13, 0x7f0a085e

    if-lez v5, :cond_9

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->isPrimaryChronometer(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->isActionStyle(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    const v5, 0x7f0a085f

    invoke-virtual {v2, v12, v5}, Landroid/widget/RemoteViews;->removeAllViewsExceptId(II)V

    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    :cond_8
    invoke-virtual {v2, v12, v13}, Landroid/widget/RemoteViews;->removeAllViewsExceptId(II)V

    invoke-virtual {v2, v13, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v13, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_3
    invoke-virtual {v2, v11, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_9
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mDescription:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v14, 0x8

    if-lez v5, :cond_a

    const v5, 0x7f0a0853

    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v2, v11, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->canShowSecondaryIcon(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondaryInfoIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->bindSecondaryInfoIcon(Landroid/widget/RemoteViews;Landroid/graphics/drawable/Icon;)V

    goto :goto_4

    :cond_b
    const v3, 0x7f0a0871

    invoke-virtual {v2, v3, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_4
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mSecondIcon:Landroid/graphics/drawable/Icon;

    if-eqz v3, :cond_c

    invoke-virtual {v2, v10, v3}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    invoke-virtual {v2, v10, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_c
    iget v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgress:I

    const/4 v5, -0x1

    if-le v3, v5, :cond_10

    const v10, 0x7f0a0863

    invoke-virtual {v2, v10, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v10, 0x7f0a085b

    invoke-virtual {v2, v10, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v10, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressSegments:[Landroid/os/Parcelable;

    array-length v15, v10

    const/16 v12, 0x64

    if-lez v15, :cond_e

    int-to-float v3, v3

    iget v15, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressMax:I

    if-lez v15, :cond_d

    int-to-float v12, v12

    mul-float/2addr v3, v12

    int-to-float v12, v15

    div-float/2addr v3, v12

    :cond_d
    move/from16 v18, v3

    new-instance v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    iget-object v15, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressSegmentIcon:Landroid/graphics/drawable/Icon;

    iget v11, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressColor:I

    move-object/from16 v19, v15

    move-object v15, v3

    move-object/from16 v16, v12

    move-object/from16 v17, v10

    move/from16 v20, v11

    invoke-direct/range {v15 .. v20}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;-><init>(Landroid/content/Context;[Landroid/os/Parcelable;FLandroid/graphics/drawable/Icon;I)V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingSeekBarCreator;->makeImage()Landroid/graphics/Bitmap;

    move-result-object v3

    const v10, 0x7f0a0861

    invoke-virtual {v2, v10, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v2, v10, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_6

    :cond_e
    iget v10, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressMax:I

    if-nez v10, :cond_f

    goto :goto_5

    :cond_f
    move v12, v10

    :goto_5
    iget-boolean v10, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mProgressIndeterminate:Z

    const v11, 0x7f0a0862

    invoke-virtual {v2, v11, v12, v3, v10}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    invoke-virtual {v2, v11, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_10
    :goto_6
    iget v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActionType:I

    if-eq v3, v5, :cond_13

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mActions:Ljava/util/ArrayList;

    if-eqz v5, :cond_13

    if-nez v3, :cond_11

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->isBottomBtnActionStyle(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual {v0, v5, v2, v10}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->updateIconButtonRemoteView(Ljava/util/ArrayList;Landroid/widget/RemoteViews;Z)V

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    const v11, 0x7f06051a

    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v2, v13, v10}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string/jumbo v10, "setMaxLines"

    invoke-virtual {v2, v9, v10, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual {v2, v13, v10, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_11
    if-ne v3, v7, :cond_13

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v10, v4

    :goto_7
    const v11, 0x7f0a084f

    if-ge v10, v3, :cond_12

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/Notification$Action;

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->makeTextButtonRemoteView(Landroid/app/Notification$Action;Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_12
    invoke-virtual {v2, v11, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_13
    if-nez v6, :cond_14

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->isBottomBtnActionStyle(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->updateNotiExpandButtonView(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;Landroid/widget/RemoteViews;Z)V

    :cond_14
    sget-object v3, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    iget v10, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mUserId:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    if-eqz v3, :cond_15

    invoke-virtual {v3, v10}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v3

    goto :goto_8

    :cond_15
    move v3, v4

    :goto_8
    if-eqz v3, :cond_16

    iget v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mUserId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->bindProfileBadge(Landroid/widget/RemoteViews;I)V

    goto :goto_9

    :cond_16
    if-eqz v6, :cond_17

    const v3, 0x7f0a0865

    invoke-virtual {v2, v3, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_17
    :goto_9
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v2, v6, v3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->updateExpandViewFontSize(Landroid/widget/RemoteViews;ZLandroid/content/Context;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_19

    iget v1, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChronometerPosition:I

    if-ne v1, v7, :cond_18

    invoke-virtual {v2, v9, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v2, v8, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    :cond_18
    const/4 v3, 0x2

    if-ne v1, v3, :cond_19

    const v1, 0x7f0a085d

    invoke-virtual {v2, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f0a0860

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    invoke-virtual {v2, v3, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v2, v1, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    :cond_19
    return-object v2
.end method

.method public final makeIconButtons(Ljava/util/ArrayList;)Landroid/widget/RemoteViews;
    .locals 6

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d027c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0d027a

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$Action;

    invoke-virtual {v4}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    const v5, 0x7f0a083f

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$Action;

    iget-object v4, v4, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$Action;

    iget-object v4, v4, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    const v4, 0x7f0a0854

    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final makeTextButtonRemoteView(Landroid/app/Notification$Action;Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d027e

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    const v2, 0x7f0a0840

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070c0e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->upToLargeFontSize(I)F

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {v0, v2, p2, p0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    iget-object p0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method public final setOngoingNotificationIcon(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;Landroid/widget/RemoteViews;I)V
    .locals 9

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationAppIconEnabled()Z

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.showSmallIcon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mAppIcon:Landroid/graphics/drawable/Icon;

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCardIcon:Landroid/graphics/drawable/Icon;

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->updateSmallIconView(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;Landroid/widget/RemoteViews;I)V

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "setBackgroundResource"

    if-eqz v1, :cond_2

    const v1, 0x7f08127d

    invoke-virtual {p2, p3, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->updateSmallIconView(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;Landroid/widget/RemoteViews;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2, p3, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :goto_1
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_3
    return-void
.end method

.method public final upToLargeFontSize(I)F
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const v0, 0x3f4ccccd    # 0.8f

    const v1, 0x3fa66666    # 1.3f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    int-to-float p1, p1

    mul-float/2addr p1, p0

    return p1
.end method

.method public final updateCollapsedViewFontSize(Landroid/widget/RemoteViews;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->upToLargeFontSize(I)F

    move-result v0

    const v1, 0x1020016

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c0e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->upToLargeFontSize(I)F

    move-result v0

    const v1, 0x7f0a084b

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->upToLargeFontSize(I)F

    move-result v0

    const v1, 0x10201fa

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->upToLargeFontSize(I)F

    move-result p0

    const v0, 0x102064e

    invoke-virtual {p1, v0, v2, p0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    return-void
.end method

.method public final updateExpandViewFontSize(Landroid/widget/RemoteViews;ZLandroid/content/Context;)V
    .locals 2

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_0

    const p2, 0x7f070c0d

    goto :goto_0

    :cond_0
    const p2, 0x7f070c0a

    :goto_0
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->upToLargeFontSize(I)F

    move-result p2

    const v0, 0x7f0a0859

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070c0e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->upToLargeFontSize(I)F

    move-result p2

    const v0, 0x7f0a085e

    invoke-virtual {p1, v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    const v0, 0x7f0a0853

    invoke-virtual {p1, v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070c07

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->upToLargeFontSize(I)F

    move-result p2

    const v0, 0x7f0a085f

    invoke-virtual {p1, v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    const v0, 0x10201fa

    invoke-virtual {p1, v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070c08

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->upToLargeFontSize(I)F

    move-result p0

    const p2, 0x102064e

    invoke-virtual {p1, p2, v1, p0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    return-void
.end method

.method public final updateIconButtonRemoteView(Ljava/util/ArrayList;Landroid/widget/RemoteViews;Z)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->makeIconButtons(Ljava/util/ArrayList;)Landroid/widget/RemoteViews;

    move-result-object p0

    const p1, 0x7f0a0855

    invoke-virtual {p2, p1}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    const v0, 0x7f0a0856

    invoke-virtual {p2, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p2, p1, p0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    invoke-virtual {p2, p1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 p0, 0x3

    const p1, 0x7f0a084d

    invoke-virtual {p2, p1, p0, v2}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    const/4 p0, 0x1

    invoke-virtual {p2, p1, p0, v2}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0, p0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    return-void
.end method

.method public final updateNotiExpandButtonView(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;Landroid/widget/RemoteViews;Z)V
    .locals 4

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0866

    invoke-virtual {p2, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    const v1, 0x7f0a0867

    invoke-virtual {p2, v1}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const v3, 0x7f0d027d

    invoke-direct {v2, p0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget-object p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->isActionStyle(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez p3, :cond_1

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    :goto_0
    const/4 p0, 0x1

    const p1, 0x10202da

    const-string/jumbo p3, "setExpanded"

    invoke-virtual {p2, p1, p3, p0}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutUtil;->setExpandButtonColor(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public final updateSmallIconView(Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;Landroid/widget/RemoteViews;I)V
    .locals 2

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCardIconBg:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1, p1, v0}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityLayoutCreatorImpl;->context:Landroid/content/Context;

    const p1, 0x7f0604d5

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    const/16 v1, 0xff

    invoke-static {v1, p1, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    const-string/jumbo p1, "setColorFilter"

    invoke-virtual {p2, p3, p1, p0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method
