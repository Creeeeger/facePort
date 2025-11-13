.class Lcom/android/settings/network/apn/ApnEditor$ApnSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/apn/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/apn/ApnEditor;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/apn/ApnEditor;Landroid/os/Handler;)V
    .locals 1

    .line 349
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor$ApnSettingsObserver;->this$0:Lcom/android/settings/network/apn/ApnEditor;

    .line 350
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 351
    invoke-static {p1}, Lcom/android/settings/network/apn/ApnEditor;->access$000(Lcom/android/settings/network/apn/ApnEditor;)Landroid/content/ContentResolver;

    move-result-object p2

    .line 352
    iget-object v0, p1, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {v0}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnEditor;->-$$Nest$fgetmCarrierUri(Lcom/android/settings/network/apn/ApnEditor;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/settings/network/apn/ApnEditor;->mApnData:Lcom/android/settings/network/apn/ApnEditor$ApnData;

    invoke-virtual {p1}, Lcom/android/settings/network/apn/ApnEditor$ApnData;->getUri()Landroid/net/Uri;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 353
    invoke-virtual {p2, p1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 357
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p1, :cond_0

    .line 359
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor$ApnSettingsObserver;->this$0:Lcom/android/settings/network/apn/ApnEditor;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/network/apn/ApnEditor;->-$$Nest$fputmHasMdmEditedApn(Lcom/android/settings/network/apn/ApnEditor;Z)V

    :cond_0
    return-void
.end method
