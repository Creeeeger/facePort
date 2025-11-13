.class public final Landroidx/window/embedding/SplitAttributes$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

.field public dividerAttributes:Landroidx/window/embedding/DividerAttributes;

.field public layoutDirection:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

.field public splitType:Landroidx/window/embedding/SplitAttributes$SplitType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/window/embedding/SplitAttributes$SplitType;->SPLIT_TYPE_EQUAL:Landroidx/window/embedding/SplitAttributes$SplitType;

    iput-object v0, p0, Landroidx/window/embedding/SplitAttributes$Builder;->splitType:Landroidx/window/embedding/SplitAttributes$SplitType;

    sget-object v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LOCALE:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    iput-object v0, p0, Landroidx/window/embedding/SplitAttributes$Builder;->layoutDirection:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    sget-object v0, Landroidx/window/embedding/EmbeddingAnimationBackground;->DEFAULT:Landroidx/window/embedding/EmbeddingAnimationBackground$DefaultBackground;

    iput-object v0, p0, Landroidx/window/embedding/SplitAttributes$Builder;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    sget-object v0, Landroidx/window/embedding/DividerAttributes;->NO_DIVIDER:Landroidx/window/embedding/DividerAttributes$Companion$NO_DIVIDER$1;

    iput-object v0, p0, Landroidx/window/embedding/SplitAttributes$Builder;->dividerAttributes:Landroidx/window/embedding/DividerAttributes;

    return-void
.end method
