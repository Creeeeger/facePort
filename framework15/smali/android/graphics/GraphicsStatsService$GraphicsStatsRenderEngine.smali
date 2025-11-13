.class public final enum Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;
.super Ljava/lang/Enum;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GraphicsStatsRenderEngine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;

.field public static final enum blacklist GL:Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;

.field public static final enum blacklist VK:Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;


# direct methods
.method private static synthetic blacklist $values()[Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;
    .locals 2

    sget-object v0, Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;->GL:Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;

    sget-object v1, Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;->VK:Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;

    filled-new-array {v0, v1}, [Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;

    const-string v1, "GL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;->GL:Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;

    new-instance v0, Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;

    const-string v1, "VK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;->VK:Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;

    invoke-static {}, Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;->$values()[Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;

    move-result-object v0

    sput-object v0, Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;->$VALUES:[Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;

    return-object v0
.end method

.method public static blacklist values()[Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;
    .locals 1

    sget-object v0, Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;->$VALUES:[Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;

    invoke-virtual {v0}, [Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/GraphicsStatsService$GraphicsStatsRenderEngine;

    return-object v0
.end method
