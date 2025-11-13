.class public final Landroid/service/pm/PackageProto$UserInfoProto$ArchiveState$ArchiveActivityInfo;
.super Ljava/lang/Object;
.source "PackageProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/pm/PackageProto$UserInfoProto$ArchiveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ArchiveActivityInfo"
.end annotation


# static fields
.field public static final blacklist ICON_BITMAP_PATH:J = 0x10900000002L

.field public static final blacklist MONOCHROME_ICON_BITMAP_PATH:J = 0x10900000003L

.field public static final blacklist ORIGINAL_COMPONENT_NAME:J = 0x10900000004L

.field public static final blacklist TITLE:J = 0x10900000001L


# instance fields
.field final synthetic blacklist this$2:Landroid/service/pm/PackageProto$UserInfoProto$ArchiveState;


# direct methods
.method public constructor blacklist <init>(Landroid/service/pm/PackageProto$UserInfoProto$ArchiveState;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/pm/PackageProto$UserInfoProto$ArchiveState$ArchiveActivityInfo;->this$2:Landroid/service/pm/PackageProto$UserInfoProto$ArchiveState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
