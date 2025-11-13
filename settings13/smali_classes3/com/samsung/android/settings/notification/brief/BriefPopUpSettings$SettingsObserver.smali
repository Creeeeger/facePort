.class final Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BriefPopUpSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final EDGE_LIGHTING:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;Landroid/os/Handler;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;

    .line 191
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "edge_lighting"

    .line 188
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;->EDGE_LIGHTING:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;->-$$Nest$mupdateVisible(Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;->EDGE_LIGHTING:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
