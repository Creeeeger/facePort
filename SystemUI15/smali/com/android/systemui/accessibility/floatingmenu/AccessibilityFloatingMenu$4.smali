.class public final Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$4;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu$4;->this$0:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenu;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;

    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuView;->mAdapter:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityTargetAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
