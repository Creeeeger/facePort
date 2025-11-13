.class public final Landroid/app/cloudsearch/SearchRequest$Builder;
.super Ljava/lang/Object;
.source "SearchRequest.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/cloudsearch/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/cloudsearch/SearchRequest;
    .locals 2

    new-instance v0, Landroid/app/cloudsearch/SearchRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/cloudsearch/SearchRequest;-><init>(Landroid/app/cloudsearch/SearchRequest-IA;)V

    return-object v0
.end method

.method public blacklist setCallerPackageName(Ljava/lang/String;)Landroid/app/cloudsearch/SearchRequest$Builder;
    .locals 0

    return-object p0
.end method

.method public whitelist setMaxLatencyMillis(F)Landroid/app/cloudsearch/SearchRequest$Builder;
    .locals 0

    return-object p0
.end method

.method public whitelist setQuery(Ljava/lang/String;)Landroid/app/cloudsearch/SearchRequest$Builder;
    .locals 0

    return-object p0
.end method

.method public whitelist setResultNumber(I)Landroid/app/cloudsearch/SearchRequest$Builder;
    .locals 0

    return-object p0
.end method

.method public whitelist setResultOffset(I)Landroid/app/cloudsearch/SearchRequest$Builder;
    .locals 0

    return-object p0
.end method

.method public whitelist setSearchConstraints(Landroid/os/Bundle;)Landroid/app/cloudsearch/SearchRequest$Builder;
    .locals 0

    return-object p0
.end method
