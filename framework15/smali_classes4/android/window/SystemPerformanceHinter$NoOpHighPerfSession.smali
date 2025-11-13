.class Landroid/window/SystemPerformanceHinter$NoOpHighPerfSession;
.super Landroid/window/SystemPerformanceHinter$HighPerfSession;
.source "SystemPerformanceHinter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SystemPerformanceHinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoOpHighPerfSession"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/window/SystemPerformanceHinter;


# direct methods
.method public constructor blacklist <init>(Landroid/window/SystemPerformanceHinter;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/window/SystemPerformanceHinter$NoOpHighPerfSession;->this$0:Landroid/window/SystemPerformanceHinter;

    const/4 v0, -0x1

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/window/SystemPerformanceHinter$HighPerfSession;-><init>(Landroid/window/SystemPerformanceHinter;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0

    return-void
.end method

.method public blacklist start()V
    .locals 0

    return-void
.end method
