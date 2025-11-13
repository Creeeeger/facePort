.class Lcom/samsung/android/widget/SemPressGestureDetector$7;
.super Ljava/lang/Object;
.source "SemPressGestureDetector.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemPressGestureDetector;->parseWebView(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

.field final synthetic blacklist val$requestCode:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/widget/SemPressGestureDetector;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector$7;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    iput-object p2, p0, Lcom/samsung/android/widget/SemPressGestureDetector$7;->val$requestCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector$7;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onReceiveValue(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector$7;->this$0:Lcom/samsung/android/widget/SemPressGestureDetector;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector$7;->val$requestCode:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->-$$Nest$msendHtmlData(Lcom/samsung/android/widget/SemPressGestureDetector;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
