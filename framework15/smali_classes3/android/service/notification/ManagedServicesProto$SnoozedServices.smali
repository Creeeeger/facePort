.class public final Landroid/service/notification/ManagedServicesProto$SnoozedServices;
.super Ljava/lang/Object;
.source "ManagedServicesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ManagedServicesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SnoozedServices"
.end annotation


# static fields
.field public static final blacklist SNOOZED:J = 0x20b00000002L

.field public static final blacklist USER_ID:J = 0x10500000001L


# instance fields
.field final synthetic blacklist this$0:Landroid/service/notification/ManagedServicesProto;


# direct methods
.method public constructor blacklist <init>(Landroid/service/notification/ManagedServicesProto;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/notification/ManagedServicesProto$SnoozedServices;->this$0:Landroid/service/notification/ManagedServicesProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
