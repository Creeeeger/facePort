.class public Lcom/android/internal/policy/KeyInterceptionInfo;
.super Ljava/lang/Object;
.source "KeyInterceptionInfo.java"


# instance fields
.field public final blacklist layoutParamsPrivateFlags:I

.field public final blacklist layoutParamsType:I

.field public final blacklist windowOwnerUid:I

.field public final blacklist windowTitle:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(IILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsType:I

    iput p2, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->layoutParamsPrivateFlags:I

    iput-object p3, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->windowTitle:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/policy/KeyInterceptionInfo;->windowOwnerUid:I

    return-void
.end method
