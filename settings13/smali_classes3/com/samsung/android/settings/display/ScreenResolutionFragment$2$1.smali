.class Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$1;
.super Ljava/lang/Object;
.source "ScreenResolutionFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2$1;->this$1:Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 288
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
