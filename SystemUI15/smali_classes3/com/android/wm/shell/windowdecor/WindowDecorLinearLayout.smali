.class public Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/TaskFocusStateConsumer;


# static fields
.field public static final TASK_FOCUSED_STATE:[I


# instance fields
.field public mIsTaskFocused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f04065e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;->TASK_FOCUSED_STATE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final onCreateDrawableState(I)[I
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;->mIsTaskFocused:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p0

    sget-object p1, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;->TASK_FOCUSED_STATE:[I

    invoke-static {p0, p1}, Landroid/widget/LinearLayout;->mergeDrawableStates([I[I)[I

    return-object p0
.end method

.method public final setTaskFocusState(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;->mIsTaskFocused:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a024b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/android/wm/shell/windowdecor/TaskFocusStateConsumer;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/wm/shell/windowdecor/TaskFocusStateConsumer;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/windowdecor/TaskFocusStateConsumer;->setTaskFocusState(Z)V

    :cond_0
    return-void
.end method
