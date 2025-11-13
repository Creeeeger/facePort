.class public Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;
.super Ljava/lang/Object;
.source "RootContentBehavior.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/RemoteComposeOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior$Companion;
    }
.end annotation


# static fields
.field public static final blacklist ALIGNMENT_BOTTOM:I = 0x4

.field public static final blacklist ALIGNMENT_CENTER:I = 0x22

.field public static final blacklist ALIGNMENT_END:I = 0x40

.field public static final blacklist ALIGNMENT_HORIZONTAL_CENTER:I = 0x20

.field public static final blacklist ALIGNMENT_START:I = 0x10

.field public static final blacklist ALIGNMENT_TOP:I = 0x1

.field public static final blacklist ALIGNMENT_VERTICAL_CENTER:I = 0x2

.field public static final blacklist COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior$Companion;

.field public static final blacklist LAYOUT_HORIZONTAL_FIXED:I = 0x4

.field public static final blacklist LAYOUT_HORIZONTAL_MATCH_PARENT:I = 0x1

.field public static final blacklist LAYOUT_HORIZONTAL_WRAP_CONTENT:I = 0x2

.field public static final blacklist LAYOUT_MATCH_PARENT:I = 0x9

.field public static final blacklist LAYOUT_VERTICAL_FIXED:I = 0x20

.field public static final blacklist LAYOUT_VERTICAL_MATCH_PARENT:I = 0x8

.field public static final blacklist LAYOUT_VERTICAL_WRAP_CONTENT:I = 0x10

.field public static final blacklist LAYOUT_WRAP_CONTENT:I = 0x12

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist SCALE_CROP:I = 0x5

.field public static final blacklist SCALE_FILL_BOUNDS:I = 0x6

.field public static final blacklist SCALE_FILL_HEIGHT:I = 0x3

.field public static final blacklist SCALE_FILL_WIDTH:I = 0x2

.field public static final blacklist SCALE_FIT:I = 0x4

.field public static final blacklist SCALE_INSIDE:I = 0x1

.field public static final blacklist SCROLL_HORIZONTAL:I = 0x1

.field public static final blacklist SCROLL_VERTICAL:I = 0x2

.field public static final blacklist SIZING_LAYOUT:I = 0x1

.field public static final blacklist SIZING_SCALE:I = 0x2

.field protected static final blacklist TAG:Ljava/lang/String; = "RootContentBehavior"


# instance fields
.field blacklist mAlignment:I

.field blacklist mMode:I

.field blacklist mScroll:I

.field blacklist mSizing:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior$Companion;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior$Companion-IA;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior$Companion;

    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mScroll:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mSizing:I

    const/16 v1, 0x22

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mAlignment:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mMode:I

    const-string v2, "RootContentBehavior"

    packed-switch p1, :pswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "incorrect scroll value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mScroll:I

    nop

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p2, v1, :cond_0

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mAlignment:I

    goto :goto_3

    :cond_0
    and-int/lit16 v1, p2, 0xf0

    and-int/lit8 v5, p2, 0xf

    const/16 v6, 0x10

    if-eq v1, v6, :cond_2

    const/16 v6, 0x20

    if-eq v1, v6, :cond_2

    const/16 v6, 0x40

    if-ne v1, v6, :cond_1

    goto :goto_1

    :cond_1
    move v6, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v4

    :goto_2
    if-eq v5, v4, :cond_3

    if-eq v5, v3, :cond_3

    const/4 v7, 0x4

    if-ne v5, v7, :cond_4

    :cond_3
    move v0, v4

    :cond_4
    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mAlignment:I

    goto :goto_3

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "incorrect alignment  h: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " v: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    packed-switch p3, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "incorrect sizing value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_1
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mSizing:I

    goto :goto_4

    :pswitch_2
    const-string/jumbo v0, "sizing_layout is not yet supported"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_4
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mSizing:I

    if-ne v0, v4, :cond_6

    if-eqz p4, :cond_7

    const-string/jumbo v0, "mode for sizing layout is not yet supported"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mSizing:I

    if-ne v0, v3, :cond_7

    packed-switch p4, :pswitch_data_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "incorrect mode for scale sizing, mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :pswitch_3
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mMode:I

    nop

    :cond_7
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 4

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mScroll:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mAlignment:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mSizing:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mMode:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->setRootContentBehavior(IIII)V

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ROOT_CONTENT_BEHAVIOR scroll: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mScroll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sizing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mSizing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 6

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->COMPANION:Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior$Companion;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mScroll:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mAlignment:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mSizing:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->mMode:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior$Companion;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V

    return-void
.end method
