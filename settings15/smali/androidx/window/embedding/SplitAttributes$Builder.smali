.class public final Landroidx/window/embedding/SplitAttributes$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/SplitAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\u000cJ\u0010\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/window/embedding/SplitAttributes$Builder;",
        "",
        "()V",
        "animationBackground",
        "Landroidx/window/embedding/EmbeddingAnimationBackground;",
        "dividerAttributes",
        "Landroidx/window/embedding/DividerAttributes;",
        "layoutDirection",
        "Landroidx/window/embedding/SplitAttributes$LayoutDirection;",
        "splitType",
        "Landroidx/window/embedding/SplitAttributes$SplitType;",
        "build",
        "Landroidx/window/embedding/SplitAttributes;",
        "setAnimationBackground",
        "background",
        "setDividerAttributes",
        "setLayoutDirection",
        "setSplitType",
        "type",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

.field private dividerAttributes:Landroidx/window/embedding/DividerAttributes;

.field private layoutDirection:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

.field private splitType:Landroidx/window/embedding/SplitAttributes$SplitType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/window/embedding/SplitAttributes$SplitType;->SPLIT_TYPE_EQUAL:Landroidx/window/embedding/SplitAttributes$SplitType;

    iput-object v0, p0, Landroidx/window/embedding/SplitAttributes$Builder;->splitType:Landroidx/window/embedding/SplitAttributes$SplitType;

    sget-object v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LOCALE:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    iput-object v0, p0, Landroidx/window/embedding/SplitAttributes$Builder;->layoutDirection:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    sget-object v0, Landroidx/window/embedding/EmbeddingAnimationBackground;->DEFAULT:Landroidx/window/embedding/EmbeddingAnimationBackground;

    iput-object v0, p0, Landroidx/window/embedding/SplitAttributes$Builder;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    sget-object v0, Landroidx/window/embedding/DividerAttributes;->NO_DIVIDER:Landroidx/window/embedding/DividerAttributes;

    iput-object v0, p0, Landroidx/window/embedding/SplitAttributes$Builder;->dividerAttributes:Landroidx/window/embedding/DividerAttributes;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/window/embedding/SplitAttributes;
    .locals 4

    new-instance v0, Landroidx/window/embedding/SplitAttributes;

    iget-object v1, p0, Landroidx/window/embedding/SplitAttributes$Builder;->splitType:Landroidx/window/embedding/SplitAttributes$SplitType;

    iget-object v2, p0, Landroidx/window/embedding/SplitAttributes$Builder;->layoutDirection:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    iget-object v3, p0, Landroidx/window/embedding/SplitAttributes$Builder;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    iget-object p0, p0, Landroidx/window/embedding/SplitAttributes$Builder;->dividerAttributes:Landroidx/window/embedding/DividerAttributes;

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/window/embedding/SplitAttributes;-><init>(Landroidx/window/embedding/SplitAttributes$SplitType;Landroidx/window/embedding/SplitAttributes$LayoutDirection;Landroidx/window/embedding/EmbeddingAnimationBackground;Landroidx/window/embedding/DividerAttributes;)V

    return-object v0
.end method

.method public final setAnimationBackground(Landroidx/window/embedding/EmbeddingAnimationBackground;)Landroidx/window/embedding/SplitAttributes$Builder;
    .locals 1
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x5
    .end annotation

    const-string v0, "background"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/window/embedding/SplitAttributes$Builder;->animationBackground:Landroidx/window/embedding/EmbeddingAnimationBackground;

    return-object p0
.end method

.method public final setDividerAttributes(Landroidx/window/embedding/DividerAttributes;)Landroidx/window/embedding/SplitAttributes$Builder;
    .locals 1
    .annotation build Landroidx/window/RequiresWindowSdkExtension;
        version = 0x6
    .end annotation

    const-string v0, "dividerAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/window/embedding/SplitAttributes$Builder;->dividerAttributes:Landroidx/window/embedding/DividerAttributes;

    return-object p0
.end method

.method public final setLayoutDirection(Landroidx/window/embedding/SplitAttributes$LayoutDirection;)Landroidx/window/embedding/SplitAttributes$Builder;
    .locals 1

    const-string v0, "layoutDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/window/embedding/SplitAttributes$Builder;->layoutDirection:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    return-object p0
.end method

.method public final setSplitType(Landroidx/window/embedding/SplitAttributes$SplitType;)Landroidx/window/embedding/SplitAttributes$Builder;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/window/embedding/SplitAttributes$Builder;->splitType:Landroidx/window/embedding/SplitAttributes$SplitType;

    return-object p0
.end method
