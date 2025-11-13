.class final Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;
.super Ljava/lang/Object;
.source "QualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/QualifiedNetworksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NetworkValidationRequestData"
.end annotation


# instance fields
.field final blacklist mCallback:Lcom/android/internal/telephony/IIntegerConsumer;

.field final blacklist mNetworkCapability:I


# direct methods
.method private constructor blacklist <init>(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;->mNetworkCapability:I

    iput-object p2, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;->mCallback:Lcom/android/internal/telephony/IIntegerConsumer;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;-><init>(ILcom/android/internal/telephony/IIntegerConsumer;)V

    return-void
.end method
