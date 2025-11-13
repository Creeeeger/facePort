.class public final Landroid/aconfigd/Aconfigd$StorageRequestMessages;
.super Ljava/lang/Object;
.source "Aconfigd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfigd/Aconfigd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StorageRequestMessages"
.end annotation


# static fields
.field public static final blacklist MSGS:J = 0x20b00000001L


# instance fields
.field final synthetic blacklist this$0:Landroid/aconfigd/Aconfigd;


# direct methods
.method public constructor blacklist <init>(Landroid/aconfigd/Aconfigd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/aconfigd/Aconfigd$StorageRequestMessages;->this$0:Landroid/aconfigd/Aconfigd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
