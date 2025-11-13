.class public Lcom/sec/ims/settings/ImsSettings;
.super Ljava/lang/Object;
.source "ImsSettings.java"


# static fields
.field public static final GLOBAL_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.ims.settings/global"

    .line 90
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsSettings;->GLOBAL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
