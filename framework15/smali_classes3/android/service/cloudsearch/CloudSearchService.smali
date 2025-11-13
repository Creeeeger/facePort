.class public abstract Landroid/service/cloudsearch/CloudSearchService;
.super Landroid/app/Service;
.source "CloudSearchService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.cloudsearch.CloudSearchService"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public abstract whitelist onSearch(Landroid/app/cloudsearch/SearchRequest;)V
.end method

.method public final whitelist returnResults(Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;)V
    .locals 0

    return-void
.end method
