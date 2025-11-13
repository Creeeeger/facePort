.class final Landroid/graphics/GraphicsStatsService$BufferInfo;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BufferInfo"
.end annotation


# instance fields
.field blacklist mEndTime:J

.field final blacklist mPackageName:Ljava/lang/String;

.field blacklist mStartTime:J

.field final blacklist mVersionCode:J

.field final synthetic blacklist this$0:Landroid/graphics/GraphicsStatsService;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/GraphicsStatsService;Ljava/lang/String;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/graphics/GraphicsStatsService$BufferInfo;->this$0:Landroid/graphics/GraphicsStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    iput-wide p3, p0, Landroid/graphics/GraphicsStatsService$BufferInfo;->mVersionCode:J

    iput-wide p5, p0, Landroid/graphics/GraphicsStatsService$BufferInfo;->mStartTime:J

    return-void
.end method
