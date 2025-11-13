.class public Landroid/app/DialogFragment;
.super Landroid/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final greylist-max-o SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final greylist-max-o SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final greylist-max-o SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final greylist-max-o SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final greylist-max-o SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final whitelist STYLE_NORMAL:I = 0x0

.field public static final whitelist STYLE_NO_FRAME:I = 0x2

.field public static final whitelist STYLE_NO_INPUT:I = 0x3

.field public static final whitelist STYLE_NO_TITLE:I = 0x1


# instance fields
.field greylist-max-r mBackStackId:I

.field greylist-max-o mCancelable:Z

.field greylist-max-o mDialog:Landroid/app/Dialog;

.field greylist mDismissed:Z

.field greylist mShownByMe:Z

.field greylist-max-o mShowsDialog:Z

.field greylist-max-o mStyle:I

.field greylist-max-o mTheme:I

.field greylist-max-r mViewDestroyed:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 198
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/DialogFragment;->mStyle:I

    .line 184
    iput v0, p0, Landroid/app/DialogFragment;->mTheme:I

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mCancelable:Z

    .line 186
    iput-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    .line 199
    return-void
.end method


# virtual methods
.method public whitelist dismiss()V
    .locals 1

    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->dismissInternal(Z)V

    .line 280
    return-void
.end method

.method public whitelist dismissAllowingStateLoss()V
    .locals 1

    .line 289
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->dismissInternal(Z)V

    .line 290
    return-void
.end method

.method greylist-max-o dismissInternal(Z)V
    .locals 3
    .param p1, "allowStateLoss"    # Z

    .line 293
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    if-eqz v0, :cond_0

    .line 294
    return-void

    .line 296
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    .line 297
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    .line 298
    iget-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 299
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 300
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 302
    :cond_1
    iput-boolean v0, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    .line 303
    iget v1, p0, Landroid/app/DialogFragment;->mBackStackId:I

    if-ltz v1, :cond_2

    .line 304
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Landroid/app/DialogFragment;->mBackStackId:I

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentManager;->popBackStack(II)V

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    goto :goto_0

    .line 308
    :cond_2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 309
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 310
    if-eqz p1, :cond_3

    .line 311
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 313
    :cond_3
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 316
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :goto_0
    return-void
.end method

.method public whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 570
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 571
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DialogFragment:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mStyle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/DialogFragment;->mStyle:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 573
    const-string v0, " mTheme=0x"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/DialogFragment;->mTheme:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mCancelable="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/DialogFragment;->mCancelable:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 575
    const-string v0, " mShowsDialog="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 576
    const-string v0, " mBackStackId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 577
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mDialog="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 578
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mViewDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 579
    const-string v0, " mDismissed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 580
    const-string v0, " mShownByMe="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 581
    return-void
.end method

.method public whitelist getDialog()Landroid/app/Dialog;
    .locals 1

    .line 319
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public whitelist getShowsDialog()Z
    .locals 1

    .line 372
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    return v0
.end method

.method public whitelist getTheme()I
    .locals 1

    .line 323
    iget v0, p0, Landroid/app/DialogFragment;->mTheme:I

    return v0
.end method

.method public whitelist isCancelable()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mCancelable:Z

    return v0
.end method

.method public whitelist onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 478
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 480
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_0

    .line 481
    return-void

    .line 484
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 485
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 486
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 490
    iget-object v1, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 487
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "DialogFragment can not be attached to a container view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 493
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_3

    .line 494
    iget-object v2, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 496
    :cond_3
    iget-object v2, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-boolean v3, p0, Landroid/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 497
    iget-object v2, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    const-string v3, "DialogFragment"

    invoke-virtual {v2, v3, p0, p0}, Landroid/app/Dialog;->takeCancelAndDismissListeners(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 501
    if-eqz p1, :cond_4

    .line 502
    const-string v2, "android:savedDialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 503
    .local v2, "dialogState":Landroid/os/Bundle;
    if-eqz v2, :cond_4

    .line 504
    iget-object v3, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 507
    .end local v2    # "dialogState":Landroid/os/Bundle;
    :cond_4
    return-void

    .line 498
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "You can not set Dialog\'s OnCancelListener or OnDismissListener"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 377
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 378
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    .line 383
    :cond_0
    return-void
.end method

.method public whitelist onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 464
    return-void
.end method

.method public whitelist onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 398
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 400
    iget v0, p0, Landroid/app/DialogFragment;->mContainerId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    .line 402
    if-eqz p1, :cond_1

    .line 403
    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/DialogFragment;->mStyle:I

    .line 404
    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/DialogFragment;->mTheme:I

    .line 405
    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mCancelable:Z

    .line 406
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    .line 407
    const/4 v0, -0x1

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    .line 409
    :cond_1
    return-void
.end method

.method public whitelist onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 460
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public whitelist onDestroyView()V
    .locals 2

    .line 557
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 558
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 562
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    .line 563
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 566
    :cond_0
    return-void
.end method

.method public whitelist onDetach()V
    .locals 1

    .line 387
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 388
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    if-nez v0, :cond_0

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    .line 394
    :cond_0
    return-void
.end method

.method public whitelist onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 467
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    if-nez v0, :cond_0

    .line 472
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->dismissInternal(Z)V

    .line 474
    :cond_0
    return-void
.end method

.method public whitelist onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 414
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_0

    .line 415
    invoke-super {p0, p1}, Landroid/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0

    .line 418
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 419
    iget v1, p0, Landroid/app/DialogFragment;->mStyle:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 421
    :pswitch_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 427
    :pswitch_1
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 429
    :goto_0
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    const-string v1, "layout_inflater"

    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0

    .line 433
    :cond_1
    iget-object v0, p0, Landroid/app/DialogFragment;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 520
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 521
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 523
    .local v0, "dialogState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 524
    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 527
    .end local v0    # "dialogState":Landroid/os/Bundle;
    :cond_0
    iget v0, p0, Landroid/app/DialogFragment;->mStyle:I

    if-eqz v0, :cond_1

    .line 528
    const-string v1, "android:style"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 530
    :cond_1
    iget v0, p0, Landroid/app/DialogFragment;->mTheme:I

    if-eqz v0, :cond_2

    .line 531
    const-string v1, "android:theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 533
    :cond_2
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mCancelable:Z

    if-nez v0, :cond_3

    .line 534
    const-string v1, "android:cancelable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 536
    :cond_3
    iget-boolean v0, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_4

    .line 537
    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 539
    :cond_4
    iget v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 540
    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 542
    :cond_5
    return-void
.end method

.method public whitelist onStart()V
    .locals 2

    .line 511
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 512
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 513
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    .line 514
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 516
    :cond_0
    return-void
.end method

.method public whitelist onStop()V
    .locals 1

    .line 546
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 547
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 550
    :cond_0
    return-void
.end method

.method public whitelist setCancelable(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .line 336
    iput-boolean p1, p0, Landroid/app/DialogFragment;->mCancelable:Z

    .line 337
    iget-object v0, p0, Landroid/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 338
    :cond_0
    return-void
.end method

.method public whitelist setShowsDialog(Z)V
    .locals 0
    .param p1, "showsDialog"    # Z

    .line 365
    iput-boolean p1, p0, Landroid/app/DialogFragment;->mShowsDialog:Z

    .line 366
    return-void
.end method

.method public whitelist setStyle(II)V
    .locals 1
    .param p1, "style"    # I
    .param p2, "theme"    # I

    .line 216
    iput p1, p0, Landroid/app/DialogFragment;->mStyle:I

    .line 217
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 218
    :cond_0
    const v0, 0x1030424

    iput v0, p0, Landroid/app/DialogFragment;->mTheme:I

    .line 220
    :cond_1
    if-eqz p2, :cond_2

    .line 221
    iput p2, p0, Landroid/app/DialogFragment;->mTheme:I

    .line 223
    :cond_2
    return-void
.end method

.method public whitelist show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 2
    .param p1, "transaction"    # Landroid/app/FragmentTransaction;
    .param p2, "tag"    # Ljava/lang/String;

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    .line 265
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    .line 266
    invoke-virtual {p1, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 267
    iput-boolean v0, p0, Landroid/app/DialogFragment;->mViewDestroyed:Z

    .line 268
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    move-result v0

    iput v0, p0, Landroid/app/DialogFragment;->mBackStackId:I

    .line 269
    return v0
.end method

.method public whitelist show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    .line 239
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 240
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 241
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 242
    return-void
.end method

.method public greylist showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mDismissed:Z

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DialogFragment;->mShownByMe:Z

    .line 249
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 250
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 251
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 252
    return-void
.end method
