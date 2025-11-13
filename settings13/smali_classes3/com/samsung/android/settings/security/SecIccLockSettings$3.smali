.class Lcom/samsung/android/settings/security/SecIccLockSettings$3;
.super Landroid/database/ContentObserver;
.source "SecIccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/security/SecIccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/security/SecIccLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/security/SecIccLockSettings;Landroid/os/Handler;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/samsung/android/settings/security/SecIccLockSettings$3;->this$0:Lcom/samsung/android/settings/security/SecIccLockSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecIccLockSettings$3;->this$0:Lcom/samsung/android/settings/security/SecIccLockSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/security/SecIccLockSettings;->access$100(Lcom/samsung/android/settings/security/SecIccLockSettings;)V

    return-void
.end method
