.class public final Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$checkBox$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$checkBox$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$appIcon$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$appIcon$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$mainText$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$mainText$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$subText$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$subText$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$divider$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$divider$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$verticalDivider$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$verticalDivider$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$appInfoIcon$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$appInfoIcon$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$checkBox$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$checkBox$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$appIcon$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$appIcon$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$mainText$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$mainText$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$subText$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$subText$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$divider$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$divider$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$verticalDivider$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$verticalDivider$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$appInfoIcon$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$appInfoIcon$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$checkBox$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$checkBox$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$appIcon$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$appIcon$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$mainText$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$mainText$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$subText$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$subText$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$divider$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$divider$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$verticalDivider$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$verticalDivider$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$appInfoIcon$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView$appInfoIcon$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/widget/halfmargin/AsSubAppListItemView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    return-void
.end method
