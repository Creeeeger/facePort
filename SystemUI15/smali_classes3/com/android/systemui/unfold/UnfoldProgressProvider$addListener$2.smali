.class public final Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;


# instance fields
.field public final synthetic $listener:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$2;->$listener:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFoldUpdated(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/unfold/UnfoldProgressProvider$addListener$2;->$listener:Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider$UnfoldListener;->onFoldStateChanged(Z)V

    return-void
.end method
