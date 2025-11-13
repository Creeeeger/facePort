.class Lcom/google/android/material/navigation/NavigationBarPresenter$2;
.super Ljava/lang/Object;
.source "NavigationBarPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/NavigationBarPresenter;->updateMenuView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;


# direct methods
.method constructor <init>(Lcom/google/android/material/navigation/NavigationBarPresenter;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$2;->this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter$2;->this$0:Lcom/google/android/material/navigation/NavigationBarPresenter;

    invoke-static {p0}, Lcom/google/android/material/navigation/NavigationBarPresenter;->access$100(Lcom/google/android/material/navigation/NavigationBarPresenter;)Lcom/google/android/material/navigation/NavigationBarMenuView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->updateMenuView()V

    return-void
.end method
