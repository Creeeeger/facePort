.class public Lcom/android/settings/display/AlwaysOnDisplaySlice;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# static fields
.field public static final MY_USER:I


# instance fields
.field public final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->MY_USER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-void
.end method


# virtual methods
.method public final getIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSlice()Landroidx/slice/Slice;
    .locals 7

    iget-object v0, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    sget v1, Lcom/android/settings/display/AlwaysOnDisplaySlice;->MY_USER:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailableForUser(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mContext:Landroid/content/Context;

    invoke-interface {p0, v0}, Lcom/android/settings/slices/CustomSliceable;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mContext:Landroid/content/Context;

    const v4, 0x1010435

    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v4, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v1

    new-instance v4, Landroidx/slice/builders/ListBuilder;

    iget-object v5, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/settings/slices/CustomSliceRegistry;->ALWAYS_ON_SLICE_URI:Landroid/net/Uri;

    invoke-direct {v4, v5, v6}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v5, v4, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v5, v3}, Landroidx/slice/builders/impl/ListBuilder;->setColor(I)V

    iget-object v3, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mContext:Landroid/content/Context;

    const v5, 0x7f141303

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    invoke-static {v3, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/android/settings/display/AlwaysOnDisplaySlice$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iget-object v5, v4, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v5, v3}, Landroidx/slice/builders/impl/ListBuilder;->setKeywords(Ljava/util/Set;)V

    new-instance v3, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mContext:Landroid/content/Context;

    const v6, 0x7f140d6d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v3, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    iput-boolean v5, v3, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    iget-object p0, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mContext:Landroid/content/Context;

    const v6, 0x7f140d6c

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v3, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iput-boolean v5, v3, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitleLoading:Z

    new-instance p0, Landroidx/slice/builders/SliceAction;

    invoke-direct {p0, v0, v2, v1}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    iput-object p0, v3, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    iget-object p0, v4, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, v3}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    invoke-virtual {v4}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public final getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417c0

    return p0
.end method

.method public final getUri$1()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->ALWAYS_ON_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public final onNotifyChange(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.app.slice.extra.TOGGLE_STATE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p0, p0, Lcom/android/settings/display/AlwaysOnDisplaySlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "doze_always_on"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "doze_wake_display_gesture"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
