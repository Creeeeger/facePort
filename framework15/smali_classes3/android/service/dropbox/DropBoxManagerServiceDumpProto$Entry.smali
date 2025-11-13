.class public final Landroid/service/dropbox/DropBoxManagerServiceDumpProto$Entry;
.super Ljava/lang/Object;
.source "DropBoxManagerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dropbox/DropBoxManagerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation


# static fields
.field public static final blacklist DATA:J = 0x10c00000002L

.field public static final blacklist TIME_MS:J = 0x10300000001L


# instance fields
.field final synthetic blacklist this$0:Landroid/service/dropbox/DropBoxManagerServiceDumpProto;


# direct methods
.method public constructor blacklist <init>(Landroid/service/dropbox/DropBoxManagerServiceDumpProto;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/dropbox/DropBoxManagerServiceDumpProto$Entry;->this$0:Landroid/service/dropbox/DropBoxManagerServiceDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
