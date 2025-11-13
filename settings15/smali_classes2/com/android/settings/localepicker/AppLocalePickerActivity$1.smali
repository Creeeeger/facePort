.class public final Lcom/android/settings/localepicker/AppLocalePickerActivity$1;
.super Landroid/app/FragmentManager$FragmentLifecycleCallbacks;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/localepicker/AppLocalePickerActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/localepicker/AppLocalePickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity$1;->this$0:Lcom/android/settings/localepicker/AppLocalePickerActivity;

    invoke-direct {p0}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFragmentViewCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    const p1, 0x102000a

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity$1;->this$0:Lcom/android/settings/localepicker/AppLocalePickerActivity;

    iget-object p0, p0, Lcom/android/settings/localepicker/AppLocalePickerActivity;->mAppLocaleDetailContainer:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
