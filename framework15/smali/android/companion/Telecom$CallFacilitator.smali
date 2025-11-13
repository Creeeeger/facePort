.class public final Landroid/companion/Telecom$CallFacilitator;
.super Ljava/lang/Object;
.source "Telecom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/Telecom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CallFacilitator"
.end annotation


# static fields
.field public static final blacklist EXTENDED_IDENTIFIER:J = 0x10900000003L

.field public static final blacklist IDENTIFIER:J = 0x10900000002L

.field public static final blacklist NAME:J = 0x10900000001L


# instance fields
.field final synthetic blacklist this$0:Landroid/companion/Telecom;


# direct methods
.method public constructor blacklist <init>(Landroid/companion/Telecom;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/companion/Telecom$CallFacilitator;->this$0:Landroid/companion/Telecom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
