.class public final Landroid/aconfigd/Aconfigd$StorageRequestMessage$ListStorageMessage;
.super Ljava/lang/Object;
.source "Aconfigd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfigd/Aconfigd$StorageRequestMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ListStorageMessage"
.end annotation


# static fields
.field public static final blacklist ALL:J = 0x10800000001L

.field public static final blacklist CONTAINER:J = 0x10900000002L

.field public static final blacklist PACKAGE_NAME:J = 0x10900000003L


# instance fields
.field final synthetic blacklist this$1:Landroid/aconfigd/Aconfigd$StorageRequestMessage;


# direct methods
.method public constructor blacklist <init>(Landroid/aconfigd/Aconfigd$StorageRequestMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/aconfigd/Aconfigd$StorageRequestMessage$ListStorageMessage;->this$1:Landroid/aconfigd/Aconfigd$StorageRequestMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
