.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;
.super Ljava/lang/Object;
.source "WifiApSmartSwitchBackupRestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filepath:Ljava/lang/String;

.field final synthetic val$saveKey:Ljava/lang/String;

.field final synthetic val$securityLevel:I

.field final synthetic val$sessiontime:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$filepath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$source:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$saveKey:Ljava/lang/String;

    iput p6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$securityLevel:I

    iput-object p7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$sessiontime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->createSoftapConfig(Landroid/content/Context;)V

    .line 128
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$filepath:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$source:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$saveKey:Ljava/lang/String;

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$securityLevel:I

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore$1;->val$sessiontime:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSmartSwitchBackupRestore;->Backup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
