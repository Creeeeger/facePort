.class public final Landroid/service/pm/PackageProto$UserInfoProto$ArchiveState;
.super Ljava/lang/Object;
.source "PackageProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/pm/PackageProto$UserInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ArchiveState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/pm/PackageProto$UserInfoProto$ArchiveState$ArchiveActivityInfo;
    }
.end annotation


# static fields
.field public static final blacklist ACTIVITY_INFOS:J = 0x20b00000001L

.field public static final blacklist INSTALLER_TITLE:J = 0x10900000002L


# instance fields
.field final synthetic blacklist this$1:Landroid/service/pm/PackageProto$UserInfoProto;


# direct methods
.method public constructor blacklist <init>(Landroid/service/pm/PackageProto$UserInfoProto;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/pm/PackageProto$UserInfoProto$ArchiveState;->this$1:Landroid/service/pm/PackageProto$UserInfoProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
