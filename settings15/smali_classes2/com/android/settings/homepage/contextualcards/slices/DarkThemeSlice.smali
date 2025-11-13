.class public Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice$DarkThemeWorker;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field static sActiveUiSession:J

.field static sKeepSliceShow:Z

.field public static sPreChecked:Z

.field static sSliceClicked:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->DEBUG:Z

    const-wide/16 v0, -0x3e8

    sput-wide v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sActiveUiSession:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sSliceClicked:Z

    sput-boolean v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sPreChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mUiModeManager:Landroid/app/UiModeManager;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public final getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice$DarkThemeWorker;

    return-object p0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSlice()Landroidx/slice/Slice;
    .locals 8

    sget-object v0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProviderImpl;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;->mUiSessionToken:J

    sget-wide v2, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sActiveUiSession:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sput-wide v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sActiveUiSession:J

    sput-boolean v3, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sKeepSliceShow:Z

    :cond_0
    sget-boolean v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sKeepSliceShow = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sKeepSliceShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sSliceClicked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sSliceClicked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAvailable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DarkThemeSlice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sKeepSliceShow:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sSliceClicked:Z

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sKeepSliceShow:Z

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    invoke-interface {p0, v0}, Lcom/android/settings/slices/CustomSliceable;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    const v2, 0x1010435

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    const v4, 0x7f0802b0

    invoke-static {v2, v4}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    sget-boolean v5, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sPreChecked:Z

    if-eq v5, v4, :cond_4

    sput-boolean v4, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sPreChecked:Z

    sput-boolean v3, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sSliceClicked:Z

    :cond_4
    new-instance v5, Landroidx/slice/builders/ListBuilder;

    iget-object v6, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/settings/slices/CustomSliceRegistry;->DARK_THEME_SLICE_URI:Landroid/net/Uri;

    invoke-direct {v5, v6, v7}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v6, v5, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v6, v1}, Landroidx/slice/builders/impl/ListBuilder;->setColor(I)V

    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    const v7, 0x7f140b43

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v3, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    invoke-virtual {v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;)V

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    const v2, 0x7f140b42

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iput-boolean v3, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitleLoading:Z

    new-instance p0, Landroidx/slice/builders/SliceAction;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v4}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    iput-object p0, v1, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    iget-object p0, v5, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, v1}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    invoke-virtual {v5}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->DARK_THEME_SLICE_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p0, v0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0}, Landroidx/slice/builders/impl/ListBuilder;->setIsError()V

    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417c0

    return p0
.end method

.method public final getUri$1()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->DARK_THEME_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p1}, Lcom/android/settings/Utils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p0

    sget-boolean v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->DEBUG:Z

    const-string v2, "DarkThemeSlice"

    if-eqz v0, :cond_0

    const-string v0, "night mode = "

    invoke-static {p0, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const-class p0, Landroid/os/BatteryManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p0

    const-string p1, "battery level = "

    invoke-static {p0, p1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x32

    if-gt p0, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final onNotifyChange(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.app.slice.extra.TOGGLE_STATE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    sput-boolean p1, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sPreChecked:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;->sSliceClicked:Z

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/homepage/contextualcards/slices/DarkThemeSlice;Z)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
