.class public final Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$2;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

.field public final synthetic val$scrollViewDescription:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;Landroid/widget/ScrollView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$2;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$2;->val$scrollViewDescription:Landroid/widget/ScrollView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$2;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 2
    .line 3
    const v1, 0x7f0a00f0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$2;->this$0:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView;

    .line 11
    .line 12
    const v2, 0x7f0a00ef

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$2;->val$scrollViewDescription:Landroid/widget/ScrollView;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$2;->val$scrollViewDescription:Landroid/widget/ScrollView;

    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/widget/ScrollView;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$2;->val$scrollViewDescription:Landroid/widget/ScrollView;

    .line 37
    .line 38
    invoke-virtual {v5}, Landroid/widget/ScrollView;->getPaddingTop()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    add-int/2addr v5, v2

    .line 43
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$2;->val$scrollViewDescription:Landroid/widget/ScrollView;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/widget/ScrollView;->getPaddingBottom()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    add-int/2addr v2, v5

    .line 50
    if-ge v4, v2, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v2, 0x4

    .line 60
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$2;->val$scrollViewDescription:Landroid/widget/ScrollView;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
