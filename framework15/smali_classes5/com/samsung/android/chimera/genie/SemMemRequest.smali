.class public Lcom/samsung/android/chimera/genie/SemMemRequest;
.super Ljava/lang/Object;
.source "SemMemRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/chimera/genie/SemMemRequest$MemType;
    }
.end annotation


# static fields
.field public static final whitelist MEMTYPE_CONTIGUOUS:I = 0x1

.field public static final whitelist MEMTYPE_DEFAULT:I


# instance fields
.field private final greylist mSize:I

.field private final greylist mType:I


# direct methods
.method public constructor whitelist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/chimera/genie/SemMemRequest;->mType:I

    iput p2, p0, Lcom/samsung/android/chimera/genie/SemMemRequest;->mSize:I

    return-void
.end method


# virtual methods
.method public whitelist getSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/chimera/genie/SemMemRequest;->mSize:I

    return v0
.end method

.method public whitelist getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/chimera/genie/SemMemRequest;->mType:I

    return v0
.end method
