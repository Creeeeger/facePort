.class public final Landroid/internal/perfetto/protos/ProfileCommon$InternedString;
.super Ljava/lang/Object;
.source "ProfileCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/ProfileCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InternedString"
.end annotation


# static fields
.field public static final blacklist IID:J = 0x10400000001L

.field public static final blacklist STR:J = 0x10c00000002L


# instance fields
.field final synthetic blacklist this$0:Landroid/internal/perfetto/protos/ProfileCommon;


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/ProfileCommon;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/internal/perfetto/protos/ProfileCommon$InternedString;->this$0:Landroid/internal/perfetto/protos/ProfileCommon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
