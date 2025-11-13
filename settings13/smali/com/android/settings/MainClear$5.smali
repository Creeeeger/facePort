.class Lcom/android/settings/MainClear$5;
.super Ljava/lang/Object;
.source "MainClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MainClear;->establishInitialState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MainClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MainClear;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/android/settings/MainClear$5;->this$0:Lcom/android/settings/MainClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 690
    iget-object p0, p0, Lcom/android/settings/MainClear$5;->this$0:Lcom/android/settings/MainClear;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/MainClear;->-$$Nest$msetPreloadAppsResetOption(Lcom/android/settings/MainClear;I)V

    return-void
.end method
