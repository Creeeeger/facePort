.class public Landroid/security/identity/AccessControlProfileId;
.super Ljava/lang/Object;
.source "AccessControlProfileId.java"


# instance fields
.field private blacklist mId:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/security/identity/AccessControlProfileId;->mId:I

    iput p1, p0, Landroid/security/identity/AccessControlProfileId;->mId:I

    return-void
.end method


# virtual methods
.method public whitelist getId()I
    .locals 1

    iget v0, p0, Landroid/security/identity/AccessControlProfileId;->mId:I

    return v0
.end method
