.class public Landroid/util/apk/SignatureInfo;
.super Ljava/lang/Object;
.source "SignatureInfo.java"


# instance fields
.field public final greylist-max-o apkSigningBlockOffset:J

.field public final greylist-max-o centralDirOffset:J

.field public final greylist-max-o eocd:Ljava/nio/ByteBuffer;

.field public final greylist-max-o eocdOffset:J

.field public final greylist-max-o signatureBlock:Ljava/nio/ByteBuffer;


# direct methods
.method constructor greylist-max-o <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    iput-wide p2, p0, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    iput-wide p4, p0, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iput-wide p6, p0, Landroid/util/apk/SignatureInfo;->eocdOffset:J

    iput-object p8, p0, Landroid/util/apk/SignatureInfo;->eocd:Ljava/nio/ByteBuffer;

    return-void
.end method
