.class public final Lcom/samsung/android/settings/accessibility/recommend/tryitem/LiveCaptionTryItem;
.super Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final LIVE_CAPTION_INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.live_caption"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/LiveCaptionTryItem;->LIVE_CAPTION_INTENT:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final getFunctionName()Ljava/lang/String;
    .locals 0

    const-string p0, "LiveCaption"

    return-object p0
.end method

.method public final getLaunchIntent()Landroid/content/Intent;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/LiveCaptionTryItem;->LIVE_CAPTION_INTENT:Landroid/content/Intent;

    return-object p0
.end method

.method public final getMappedUsingFunctionKeySet()Ljava/util/Set;
    .locals 0

    const-string p0, "all_sound_off_key"

    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;->mContext:Landroid/content/Context;

    const v0, 0x7f1414de

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/accessibility/recommend/tryitem/LiveCaptionTryItem;->LIVE_CAPTION_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/recommend/tryitem/AbstractTryItem;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "odi_captions_enabled"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
