.class public abstract Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;
.super Ljava/lang/Object;
.source "Easing.java"


# static fields
.field public static final blacklist CUBIC_ACCELERATE:I = 0x2

.field public static final blacklist CUBIC_ANTICIPATE:I = 0x5

.field public static final blacklist CUBIC_CUSTOM:I = 0xb

.field public static final blacklist CUBIC_DECELERATE:I = 0x3

.field public static final blacklist CUBIC_LINEAR:I = 0x4

.field public static final blacklist CUBIC_OVERSHOOT:I = 0x6

.field public static final blacklist CUBIC_STANDARD:I = 0x1

.field public static final blacklist EASE_OUT_BOUNCE:I = 0xd

.field public static final blacklist EASE_OUT_ELASTIC:I = 0xe

.field public static final blacklist SPLINE_CUSTOM:I = 0xc


# instance fields
.field blacklist mType:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist get(F)F
.end method

.method public abstract blacklist getDiff(F)F
.end method

.method public blacklist getType()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->mType:I

    return v0
.end method
