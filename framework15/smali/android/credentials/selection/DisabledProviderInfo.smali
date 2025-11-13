.class public final Landroid/credentials/selection/DisabledProviderInfo;
.super Ljava/lang/Object;
.source "DisabledProviderInfo.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mProviderName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/selection/DisabledProviderInfo;->mProviderName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist getProviderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/credentials/selection/DisabledProviderInfo;->mProviderName:Ljava/lang/String;

    return-object v0
.end method
