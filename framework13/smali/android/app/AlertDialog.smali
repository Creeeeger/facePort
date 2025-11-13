.class public Landroid/app/AlertDialog;
.super Landroid/app/Dialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AlertDialog$Builder;
    }
.end annotation


# static fields
.field public static final greylist-max-o LAYOUT_HINT_NONE:I = 0x0

.field public static final greylist-max-o LAYOUT_HINT_SIDE:I = 0x1

.field public static final whitelist THEME_DEVICE_DEFAULT_DARK:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist THEME_DEVICE_DEFAULT_LIGHT:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist THEME_HOLO_DARK:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist THEME_HOLO_LIGHT:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist THEME_TRADITIONAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private greylist mAlert:Lcom/android/internal/app/AlertController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAlert(Landroid/app/AlertDialog;)Lcom/android/internal/app/AlertController;
    .locals 0

    iget-object p0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    return-object p0
.end method

.method protected constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 146
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 201
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "createContextThemeWrapper"    # Z

    .line 204
    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Landroid/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 207
    iget-object v0, p0, Landroid/app/AlertDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->alwaysReadCloseOnTouchAttr()V

    .line 208
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/android/internal/app/AlertController;->create(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    .line 209
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 169
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 170
    invoke-virtual {p0, p3}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 171
    return-void
.end method

.method static greylist-max-o resolveDialogTheme(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeResId"    # I

    .line 212
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 213
    const v0, 0x1030446

    return v0

    .line 214
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 215
    const v0, 0x103044f

    return v0

    .line 216
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 217
    const v0, 0x1030456

    return v0

    .line 218
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 219
    const v0, 0x10302d1

    return v0

    .line 220
    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 221
    const v0, 0x10302d2

    return v0

    .line 222
    :cond_4
    invoke-static {p1}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 224
    return p1

    .line 226
    :cond_5
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 228
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x11200b8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 229
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_6

    .line 230
    sput-boolean v0, Landroid/app/AlertDialog;->mIsDarkActionBar:Z

    .line 233
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 234
    iget v0, v1, Landroid/util/TypedValue;->resourceId:I

    return v0
.end method


# virtual methods
.method public whitelist getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .line 249
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getListView()Landroid/widget/ListView;
    .locals 1

    .line 258
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 444
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 445
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 446
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 450
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 451
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 456
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 457
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 344
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 345
    return-void
.end method

.method public whitelist setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    .line 330
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 331
    return-void
.end method

.method public whitelist setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 385
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 386
    return-void
.end method

.method public whitelist setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 353
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 354
    return-void
.end method

.method public whitelist setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 398
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 399
    return-void
.end method

.method public whitelist setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 363
    return-void
.end method

.method public whitelist setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 411
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 412
    return-void
.end method

.method public whitelist setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 371
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 372
    return-void
.end method

.method greylist-max-o setButtonPanelLayoutHint(I)V
    .locals 1
    .param p1, "layoutHint"    # I

    .line 316
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->setButtonPanelLayoutHint(I)V

    .line 317
    return-void
.end method

.method public whitelist setCustomTitle(Landroid/view/View;)V
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .line 271
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 272
    return-void
.end method

.method public whitelist setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 420
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 421
    return-void
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 424
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 425
    return-void
.end method

.method public whitelist setIconAttribute(I)V
    .locals 3
    .param p1, "attrId"    # I

    .line 433
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 434
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/app/AlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 435
    iget-object v1, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 436
    return-void
.end method

.method public whitelist setInverseBackgroundForced(Z)V
    .locals 1
    .param p1, "forceInverseBackground"    # Z

    .line 439
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->setInverseBackgroundForced(Z)V

    .line 440
    return-void
.end method

.method public whitelist setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 275
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 276
    return-void
.end method

.method public greylist-max-o setMessageHyphenationFrequency(I)V
    .locals 1
    .param p1, "hyphenationFrequency"    # I

    .line 286
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->setMessageHyphenationFrequency(I)V

    .line 287
    return-void
.end method

.method public greylist-max-o setMessageMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1
    .param p1, "movementMethod"    # Landroid/text/method/MovementMethod;

    .line 280
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->setMessageMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 281
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 263
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    return-void
.end method

.method public whitelist setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 293
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;)V

    .line 294
    return-void
.end method

.method public whitelist setView(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .line 308
    iget-object v0, p0, Landroid/app/AlertDialog;->mAlert:Lcom/android/internal/app/AlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/AlertController;->setView(Landroid/view/View;IIII)V

    .line 309
    return-void
.end method
