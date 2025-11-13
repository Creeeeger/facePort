.class public final Landroid/aconfigd/Aconfigd$StorageReturnMessage$FlagQueryReturnMessage;
.super Ljava/lang/Object;
.source "Aconfigd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfigd/Aconfigd$StorageReturnMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FlagQueryReturnMessage"
.end annotation


# static fields
.field public static final blacklist BOOT_FLAG_VALUE:J = 0x10900000005L

.field public static final blacklist DEFAULT_FLAG_VALUE:J = 0x10900000006L

.field public static final blacklist FLAG_NAME:J = 0x10900000002L

.field public static final blacklist HAS_LOCAL_OVERRIDE:J = 0x10800000009L

.field public static final blacklist HAS_SERVER_OVERRIDE:J = 0x10800000007L

.field public static final blacklist IS_READWRITE:J = 0x10800000008L

.field public static final blacklist LOCAL_FLAG_VALUE:J = 0x10900000004L

.field public static final blacklist PACKAGE_NAME:J = 0x10900000001L

.field public static final blacklist SERVER_FLAG_VALUE:J = 0x10900000003L


# instance fields
.field final synthetic blacklist this$1:Landroid/aconfigd/Aconfigd$StorageReturnMessage;


# direct methods
.method public constructor blacklist <init>(Landroid/aconfigd/Aconfigd$StorageReturnMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/aconfigd/Aconfigd$StorageReturnMessage$FlagQueryReturnMessage;->this$1:Landroid/aconfigd/Aconfigd$StorageReturnMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
