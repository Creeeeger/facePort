.class public Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;
.super Landroidx/preference/SecPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/voiceinput/offline/OfflineLanguageUtil$onLangPackResultListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "@VoiceIn:LangPackPreference "


# instance fields
.field private mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field mContext:Landroid/content/Context;

.field private mDownloadBtn:Landroid/widget/ImageButton;

.field private mItemView:Landroid/view/View;

.field private mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

.field private mListener:Lcom/samsung/android/settings/voiceinput/offline/OnViewAttachedListener;

.field mLocaleCode:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public static $r8$lambda$1QdpaTYi6WAApriTeDTwcOOGMeo(Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->isNetworkConnected(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/voiceinput/PackageUtils;->isNetworkConnected(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f143266

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLocaleCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

    invoke-virtual {v2}, Lcom/samsung/android/settings/voiceinput/offline/Language;->getLangPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->addDownloadPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {}, Lcom/samsung/android/settings/voiceinput/offline/SCSPackageDownloadManager;->getInstallResult()Lio/reactivex/internal/operators/observable/ObservableHide;

    move-result-object v1

    sget-object v2, Lio/reactivex/android/schedulers/AndroidSchedulers;->MAIN_THREAD:Lio/reactivex/android/schedulers/HandlerScheduler;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/android/schedulers/HandlerScheduler;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;)V

    sget-object v3, Lio/reactivex/internal/functions/Functions;->EMPTY_RUNNABLE:Lio/reactivex/internal/functions/Functions$EmptyRunnable;

    new-instance v3, Lio/reactivex/internal/observers/LambdaObserver;

    invoke-direct {v3, v2}, Lio/reactivex/internal/observers/LambdaObserver;-><init>(Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda3;)V

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    invoke-virtual {v0, v3}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

    invoke-virtual {v1}, Lcom/samsung/android/settings/voiceinput/offline/Language;->getStoreIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    const-string v2, "cover"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "scheduler == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic $r8$lambda$Z3pFASgL4ZD8m-92czt_KtfJ1UQ(Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/voiceinput/offline/Language;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f0d0449

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/settings/voiceinput/offline/Language;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/voiceinput/RecognizerUtils;->getLocaleCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_pref"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p2}, Lcom/samsung/android/settings/voiceinput/offline/Language;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/voiceinput/RecognizerUtils;->getLocaleCode(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLocaleCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "LangPackPreference constructor() : language "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "@VoiceIn:LangPackPreference "

    invoke-static {p1, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final addViewInflateListener(Lcom/samsung/android/settings/voiceinput/offline/OnViewAttachedListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addViewInflateListener  localeCode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLocaleCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@VoiceIn:LangPackPreference "

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mListener:Lcom/samsung/android/settings/voiceinput/offline/OnViewAttachedListener;

    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mItemView:Landroid/view/View;

    const v0, 0x7f0a0568

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mDownloadBtn:Landroid/widget/ImageButton;

    const v0, 0x7f0a0bca

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0a105d

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

    invoke-virtual {v1}, Lcom/samsung/android/settings/voiceinput/offline/Language;->getLanguageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0f8a

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mSummary:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mDownloadBtn:Landroid/widget/ImageButton;

    new-instance v0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "@VoiceIn:LangPackPreference "

    const-string v0, "onBindViewHolder"

    invoke-static {p1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mListener:Lcom/samsung/android/settings/voiceinput/offline/OnViewAttachedListener;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->setPreferenceStatus()V

    return-void
.end method

.method public final onClick()V
    .locals 2

    const-string v0, "@VoiceIn:LangPackPreference "

    const-string v1, "LangPackPreference clicked!!"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mDownloadBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->performClick()Z

    return-void
.end method

.method public final onDetached()V
    .locals 2

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/disposables/CompositeDisposable;->disposed:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/reactivex/disposables/CompositeDisposable;->resources:Lio/reactivex/internal/util/OpenHashSet;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose(Lio/reactivex/internal/util/OpenHashSet;)V

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onLangPackResultSubscribed()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLangPackResultSubscribed : localeCode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLocaleCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@VoiceIn:LangPackPreference "

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onLangPackResultUpdated()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLangPackResultUpdated : localeCode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLocaleCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@VoiceIn:LangPackPreference "

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda2;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mListener:Lcom/samsung/android/settings/voiceinput/offline/OnViewAttachedListener;

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mDownloadBtn:Landroid/widget/ImageButton;

    const v1, 0x7f080668

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mDownloadBtn:Landroid/widget/ImageButton;

    const v1, 0x7f080669

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mItemView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setPreferenceStatus()V
    .locals 8

    const-string/jumbo v0, "setPreferenceStatus:: Not available, mLanguage.getStatus = "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setPreferenceStatus:: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLocaleCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@VoiceIn:LangPackPreference "

    invoke-static {v2, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

    iget-object v3, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLocaleCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getLanguagePackageStatus locale :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Status:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "@VoiceIn: OfflineLanguageUtil"

    invoke-static {v6, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/voiceinput/offline/Language;->setStatus(I)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

    invoke-virtual {v1}, Lcom/samsung/android/settings/voiceinput/offline/Language;->getStatus()I

    move-result v1

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v6, 0x2

    if-eq v1, v6, :cond_1

    const/4 v6, 0x3

    if-eq v1, v6, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mLanguage:Lcom/samsung/android/settings/voiceinput/offline/Language;

    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/offline/Language;->getStatus()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "setPreferenceStatus:: Latest version"

    invoke-static {v2, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f14149b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "setPreferenceStatus:: A newer version is available"

    invoke-static {v2, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f1414a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "setPreferenceStatus:: Not installed"

    invoke-static {v2, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/voiceinput/offline/LangPackPreference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "setPreferenceStatus:: Preference is not bind viewholder"

    invoke-static {v2, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
