.class Lcom/android/settings/network/apn/ApnEditor$1;
.super Landroid/database/ContentObserver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/apn/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/apn/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/network/apn/ApnEditor;Landroid/os/Handler;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnEditor$1;->this$0:Lcom/android/settings/network/apn/ApnEditor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 368
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 369
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnEditor$1;->this$0:Lcom/android/settings/network/apn/ApnEditor;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnEditor;->access$100(Lcom/android/settings/network/apn/ApnEditor;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 370
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnEditor$1;->this$0:Lcom/android/settings/network/apn/ApnEditor;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method
