.class public Landroid/se/omapi/SeFrameworkInitializer;
.super Ljava/lang/Object;
.source "SeFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static volatile blacklist sSeServiceManager:Landroid/se/omapi/SeServiceManager;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getSeServiceManager()Landroid/se/omapi/SeServiceManager;
    .locals 1

    sget-object v0, Landroid/se/omapi/SeFrameworkInitializer;->sSeServiceManager:Landroid/se/omapi/SeServiceManager;

    return-object v0
.end method

.method public static blacklist setSeServiceManager(Landroid/se/omapi/SeServiceManager;)V
    .locals 2

    sget-object v0, Landroid/se/omapi/SeFrameworkInitializer;->sSeServiceManager:Landroid/se/omapi/SeServiceManager;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Landroid/se/omapi/SeFrameworkInitializer;->sSeServiceManager:Landroid/se/omapi/SeServiceManager;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "seServiceManager must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setSeServiceManager called twice!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
