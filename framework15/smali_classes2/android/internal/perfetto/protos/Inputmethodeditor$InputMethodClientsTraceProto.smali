.class public final Landroid/internal/perfetto/protos/Inputmethodeditor$InputMethodClientsTraceProto;
.super Ljava/lang/Object;
.source "Inputmethodeditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/Inputmethodeditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputMethodClientsTraceProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/perfetto/protos/Inputmethodeditor$InputMethodClientsTraceProto$ClientSideProto;
    }
.end annotation


# static fields
.field public static final blacklist CLIENT:J = 0x10b00000003L

.field public static final blacklist ELAPSED_REALTIME_NANOS:J = 0x10600000001L

.field public static final blacklist WHERE:J = 0x10900000002L


# instance fields
.field final synthetic blacklist this$0:Landroid/internal/perfetto/protos/Inputmethodeditor;


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/Inputmethodeditor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/internal/perfetto/protos/Inputmethodeditor$InputMethodClientsTraceProto;->this$0:Landroid/internal/perfetto/protos/Inputmethodeditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
