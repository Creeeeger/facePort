.class public abstract Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
.super Ljava/lang/Object;
.source "SprFileAttributeBase.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final blacklist TYPE_NINE_PATCH:B = 0x1t

.field public static final blacklist TYPE_NONE:B


# instance fields
.field protected final blacklist mIntrinsic:Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;

.field public final blacklist mType:B


# direct methods
.method protected constructor blacklist <init>(B)V
    .locals 0
    .param p1, "type"    # B

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-byte p1, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->mType:B

    .line 24
    iput-object p0, p0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->mIntrinsic:Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;

    .line 25
    return-void
.end method


# virtual methods
.method public blacklist clone()Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;->clone()Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public blacklist getSPRSize()I
    .locals 1

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isValid()Z
    .locals 1

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist toSPR(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
