.class public final Lcom/samsung/android/settings/display/SecDreamSettings$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/display/SecDreamSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$4;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$4;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    iget-object v0, v0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screensaver_activate_on_dock"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$4;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecDreamSettings;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    if-eq p2, v3, :cond_2

    if-ne p2, v2, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screensaver_activate_on_sleep"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    int-to-long p0, p2

    const/16 p2, 0x2f

    const/16 v0, 0x10cf

    invoke-static {p2, v0, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method
