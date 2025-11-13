.class public final Lcom/android/server/am/AppsStartInfoProto$Package$User;
.super Ljava/lang/Object;
.source "AppsStartInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppsStartInfoProto$Package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "User"
.end annotation


# static fields
.field public static final blacklist APP_START_INFO:J = 0x20b00000002L

.field public static final blacklist MONITORING_ENABLED:J = 0x10800000003L

.field public static final blacklist UID:J = 0x10500000001L


# instance fields
.field final synthetic blacklist this$1:Lcom/android/server/am/AppsStartInfoProto$Package;


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/am/AppsStartInfoProto$Package;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/am/AppsStartInfoProto$Package$User;->this$1:Lcom/android/server/am/AppsStartInfoProto$Package;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
