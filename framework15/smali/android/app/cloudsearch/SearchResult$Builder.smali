.class public final Landroid/app/cloudsearch/SearchResult$Builder;
.super Ljava/lang/Object;
.source "SearchResult.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/cloudsearch/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/cloudsearch/SearchResult;
    .locals 2

    new-instance v0, Landroid/app/cloudsearch/SearchResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/cloudsearch/SearchResult;-><init>(Landroid/app/cloudsearch/SearchResult-IA;)V

    return-object v0
.end method

.method public whitelist setExtraInfos(Landroid/os/Bundle;)Landroid/app/cloudsearch/SearchResult$Builder;
    .locals 0

    return-object p0
.end method

.method public whitelist setScore(F)Landroid/app/cloudsearch/SearchResult$Builder;
    .locals 0

    return-object p0
.end method

.method public whitelist setSnippet(Ljava/lang/String;)Landroid/app/cloudsearch/SearchResult$Builder;
    .locals 0

    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/String;)Landroid/app/cloudsearch/SearchResult$Builder;
    .locals 0

    return-object p0
.end method
