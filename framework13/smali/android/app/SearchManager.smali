.class public Landroid/app/SearchManager;
.super Ljava/lang/Object;
.source "SearchManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SearchManager$OnCancelListener;,
        Landroid/app/SearchManager$OnDismissListener;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_KEY:Ljava/lang/String; = "action_key"

.field public static final whitelist ACTION_MSG:Ljava/lang/String; = "action_msg"

.field public static final whitelist APP_DATA:Ljava/lang/String; = "app_data"

.field public static final greylist-max-o CONTEXT_IS_VOICE:Ljava/lang/String; = "android.search.CONTEXT_IS_VOICE"

.field public static final whitelist CURSOR_EXTRA_KEY_IN_PROGRESS:Ljava/lang/String; = "in_progress"

.field private static final greylist-max-o DBG:Z = false

.field public static final greylist DISABLE_VOICE_SEARCH:Ljava/lang/String; = "android.search.DISABLE_VOICE_SEARCH"

.field public static final whitelist EXTRA_DATA_KEY:Ljava/lang/String; = "intent_extra_data_key"

.field public static final whitelist EXTRA_NEW_SEARCH:Ljava/lang/String; = "new_search"

.field public static final whitelist EXTRA_SELECT_QUERY:Ljava/lang/String; = "select_query"

.field public static final whitelist EXTRA_WEB_SEARCH_PENDINGINTENT:Ljava/lang/String; = "web_search_pendingintent"

.field public static final whitelist FLAG_QUERY_REFINEMENT:I = 0x1

.field public static final whitelist INTENT_ACTION_GLOBAL_SEARCH:Ljava/lang/String; = "android.search.action.GLOBAL_SEARCH"

.field public static final whitelist INTENT_ACTION_SEARCHABLES_CHANGED:Ljava/lang/String; = "android.search.action.SEARCHABLES_CHANGED"

.field public static final whitelist INTENT_ACTION_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.SEARCH_SETTINGS"

.field public static final whitelist INTENT_ACTION_SEARCH_SETTINGS_CHANGED:Ljava/lang/String; = "android.search.action.SETTINGS_CHANGED"

.field public static final whitelist INTENT_ACTION_WEB_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.WEB_SEARCH_SETTINGS"

.field public static final whitelist INTENT_GLOBAL_SEARCH_ACTIVITY_CHANGED:Ljava/lang/String; = "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

.field public static final whitelist MENU_KEY:C = 's'

.field public static final whitelist MENU_KEYCODE:I = 0x2f

.field public static final whitelist QUERY:Ljava/lang/String; = "query"

.field public static final greylist-max-o SEARCH_MODE:Ljava/lang/String; = "search_mode"

.field public static final whitelist SEM_EXTRA_FROM_SVI:Ljava/lang/String; = "isSamsungVoice"

.field public static final whitelist SEM_SUGGEST_COLUMN_EXTRA:Ljava/lang/String; = "suggest_extra_flags"

.field public static final whitelist SEM_SUGGEST_COLUMN_GROUP:Ljava/lang/String; = "suggest_group"

.field public static final whitelist SEM_SUGGEST_COLUMN_ICON_1_BLOB:Ljava/lang/String; = "suggest_icon_1_blob"

.field public static final whitelist SEM_SUGGEST_COLUMN_ICON_3:Ljava/lang/String; = "suggest_icon_3"

.field public static final whitelist SEM_SUGGEST_COLUMN_ICON_4:Ljava/lang/String; = "suggest_icon_4"

.field public static final whitelist SEM_SUGGEST_COLUMN_INK_DATA:Ljava/lang/String; = "suggest_ink_data"

.field public static final whitelist SEM_SUGGEST_COLUMN_MIME_TYPE:Ljava/lang/String; = "suggest_mime_type"

.field public static final whitelist SEM_SUGGEST_COLUMN_TARGET_TYPE:Ljava/lang/String; = "suggest_target_type"

.field public static final whitelist SEM_SUGGEST_COLUMN_TEXT_3:Ljava/lang/String; = "suggest_text_3"

.field public static final whitelist SEM_SUGGEST_COLUMN_TEXT_4:Ljava/lang/String; = "suggest_text_4"

.field public static final whitelist SEM_SUGGEST_COLUMN_TEXT_5:Ljava/lang/String; = "suggest_text_5"

.field public static final whitelist SEM_SUGGEST_COLUMN_URI:Ljava/lang/String; = "suggest_uri"

.field public static final whitelist SEM_SUGGEST_PARAMETER_END_TIME:Ljava/lang/String; = "etime"

.field public static final whitelist SEM_SUGGEST_PARAMETER_START_TIME:Ljava/lang/String; = "stime"

.field public static final whitelist SEM_SUGGEST_URI_PATH_REGEX_QUERY:Ljava/lang/String; = "search_suggest_regex_query"

.field public static final whitelist SHORTCUT_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.android.search.suggest"

.field public static final whitelist SUGGEST_COLUMN_AUDIO_CHANNEL_CONFIG:Ljava/lang/String; = "suggest_audio_channel_config"

.field public static final whitelist SUGGEST_COLUMN_CONTENT_TYPE:Ljava/lang/String; = "suggest_content_type"

.field public static final whitelist SUGGEST_COLUMN_DURATION:Ljava/lang/String; = "suggest_duration"

.field public static final whitelist SUGGEST_COLUMN_FLAGS:Ljava/lang/String; = "suggest_flags"

.field public static final whitelist SUGGEST_COLUMN_FORMAT:Ljava/lang/String; = "suggest_format"

.field public static final whitelist SUGGEST_COLUMN_ICON_1:Ljava/lang/String; = "suggest_icon_1"

.field public static final whitelist SUGGEST_COLUMN_ICON_2:Ljava/lang/String; = "suggest_icon_2"

.field public static final whitelist SUGGEST_COLUMN_INTENT_ACTION:Ljava/lang/String; = "suggest_intent_action"

.field public static final whitelist SUGGEST_COLUMN_INTENT_DATA:Ljava/lang/String; = "suggest_intent_data"

.field public static final whitelist SUGGEST_COLUMN_INTENT_DATA_ID:Ljava/lang/String; = "suggest_intent_data_id"

.field public static final whitelist SUGGEST_COLUMN_INTENT_EXTRA_DATA:Ljava/lang/String; = "suggest_intent_extra_data"

.field public static final whitelist SUGGEST_COLUMN_IS_LIVE:Ljava/lang/String; = "suggest_is_live"

.field public static final whitelist SUGGEST_COLUMN_LAST_ACCESS_HINT:Ljava/lang/String; = "suggest_last_access_hint"

.field public static final whitelist SUGGEST_COLUMN_PRODUCTION_YEAR:Ljava/lang/String; = "suggest_production_year"

.field public static final whitelist SUGGEST_COLUMN_PURCHASE_PRICE:Ljava/lang/String; = "suggest_purchase_price"

.field public static final whitelist SUGGEST_COLUMN_QUERY:Ljava/lang/String; = "suggest_intent_query"

.field public static final whitelist SUGGEST_COLUMN_RATING_SCORE:Ljava/lang/String; = "suggest_rating_score"

.field public static final whitelist SUGGEST_COLUMN_RATING_STYLE:Ljava/lang/String; = "suggest_rating_style"

.field public static final whitelist SUGGEST_COLUMN_RENTAL_PRICE:Ljava/lang/String; = "suggest_rental_price"

.field public static final whitelist SUGGEST_COLUMN_RESULT_CARD_IMAGE:Ljava/lang/String; = "suggest_result_card_image"

.field public static final whitelist SUGGEST_COLUMN_SHORTCUT_ID:Ljava/lang/String; = "suggest_shortcut_id"

.field public static final whitelist SUGGEST_COLUMN_SPINNER_WHILE_REFRESHING:Ljava/lang/String; = "suggest_spinner_while_refreshing"

.field public static final whitelist SUGGEST_COLUMN_TEXT_1:Ljava/lang/String; = "suggest_text_1"

.field public static final whitelist SUGGEST_COLUMN_TEXT_2:Ljava/lang/String; = "suggest_text_2"

.field public static final whitelist SUGGEST_COLUMN_TEXT_2_URL:Ljava/lang/String; = "suggest_text_2_url"

.field public static final whitelist SUGGEST_COLUMN_VIDEO_HEIGHT:Ljava/lang/String; = "suggest_video_height"

.field public static final whitelist SUGGEST_COLUMN_VIDEO_WIDTH:Ljava/lang/String; = "suggest_video_width"

.field public static final whitelist SUGGEST_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.android.search.suggest"

.field public static final whitelist SUGGEST_NEVER_MAKE_SHORTCUT:Ljava/lang/String; = "_-1"

.field public static final whitelist SUGGEST_PARAMETER_LIMIT:Ljava/lang/String; = "limit"

.field public static final whitelist SUGGEST_URI_PATH_QUERY:Ljava/lang/String; = "search_suggest_query"

.field public static final whitelist SUGGEST_URI_PATH_SHORTCUT:Ljava/lang/String; = "search_suggest_shortcut"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SearchManager"

.field public static final whitelist USER_QUERY:Ljava/lang/String; = "user_query"


# instance fields
.field greylist-max-o mCancelListener:Landroid/app/SearchManager$OnCancelListener;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field greylist-max-o mDismissListener:Landroid/app/SearchManager$OnDismissListener;

.field final greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist mSearchDialog:Landroid/app/SearchDialog;

.field private final greylist-max-o mService:Landroid/app/ISearchManager;


# direct methods
.method constructor greylist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    .line 714
    iput-object v0, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    .line 721
    iput-object p1, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    .line 722
    iput-object p2, p0, Landroid/app/SearchManager;->mHandler:Landroid/os/Handler;

    .line 723
    nop

    .line 724
    const-string/jumbo v0, "search"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 723
    invoke-static {v0}, Landroid/app/ISearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ISearchManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    .line 725
    return-void
.end method

.method private greylist-max-o ensureSearchDialog()V
    .locals 2

    .line 804
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    if-nez v0, :cond_0

    .line 805
    new-instance v0, Landroid/app/SearchDialog;

    iget-object v1, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/app/SearchDialog;-><init>(Landroid/content/Context;Landroid/app/SearchManager;)V

    iput-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    .line 806
    invoke-virtual {v0, p0}, Landroid/app/SearchDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 807
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0, p0}, Landroid/app/SearchDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 809
    :cond_0
    return-void
.end method


# virtual methods
.method public greylist-max-o getAssistIntent(Z)Landroid/content/Intent;
    .locals 3
    .param p1, "inclContext"    # Z

    .line 1147
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1148
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1149
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    .line 1150
    .local v1, "am":Landroid/app/IActivityTaskManager;
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v2

    .line 1151
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 1152
    invoke-virtual {v0, v2}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1155
    .end local v1    # "am":Landroid/app/IActivityTaskManager;
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    return-object v0

    .line 1156
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1157
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getGlobalSearchActivities()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 858
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v0}, Landroid/app/ISearchManager;->getGlobalSearchActivities()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getGlobalSearchActivity()Landroid/content/ComponentName;
    .locals 2

    .line 869
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v0}, Landroid/app/ISearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 1027
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v0, p1}, Landroid/app/ISearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSearchablesInGlobalSearch()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .line 1113
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v0}, Landroid/app/ISearchManager;->getSearchablesInGlobalSearch()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "searchable"    # Landroid/app/SearchableInfo;
    .param p2, "query"    # Ljava/lang/String;

    .line 1044
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/SearchManager;->getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public greylist getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 12
    .param p1, "searchable"    # Landroid/app/SearchableInfo;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "limit"    # I

    .line 1060
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1061
    return-object v0

    .line 1064
    :cond_0
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    .line 1065
    .local v1, "authority":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1066
    return-object v0

    .line 1069
    :cond_1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 1070
    const-string v2, "content"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1071
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1072
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1073
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1076
    .local v0, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v2

    .line 1077
    .local v2, "contentPath":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1078
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1082
    :cond_2
    const-string/jumbo v3, "search_suggest_query"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1085
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v3

    .line 1087
    .local v3, "selection":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1088
    .local v4, "selArgs":[Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1089
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    move-object v4, v5

    move-object v10, v4

    goto :goto_0

    .line 1091
    :cond_3
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-object v10, v4

    .line 1094
    .end local v4    # "selArgs":[Ljava/lang/String;
    .local v10, "selArgs":[Ljava/lang/String;
    :goto_0
    if-lez p3, :cond_4

    .line 1095
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "limit"

    invoke-virtual {v0, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1098
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 1101
    .local v11, "uri":Landroid/net/Uri;
    iget-object v4, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v5, v11

    move-object v7, v3

    move-object v8, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    return-object v4
.end method

.method public greylist getWebSearchActivity()Landroid/content/ComponentName;
    .locals 2

    .line 887
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v0}, Landroid/app/ISearchManager;->getWebSearchActivity()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-r isVisible()Z
    .locals 1

    .line 947
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public whitelist launchAssist(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "args"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1174
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    if-nez v0, :cond_0

    .line 1175
    return-void

    .line 1177
    :cond_0
    iget-object v1, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/app/ISearchManager;->launchAssist(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    nop

    .line 1181
    return-void

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1003
    iget-object v0, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    if-eqz v0, :cond_0

    .line 1004
    invoke-interface {v0}, Landroid/app/SearchManager$OnCancelListener;->onCancel()V

    .line 1006
    :cond_0
    return-void
.end method

.method public whitelist onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1013
    iget-object v0, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    if-eqz v0, :cond_0

    .line 1014
    invoke-interface {v0}, Landroid/app/SearchManager$OnDismissListener;->onDismiss()V

    .line 1016
    :cond_0
    return-void
.end method

.method public whitelist semGetSearchablesInInsightSearch(Z)Ljava/util/List;
    .locals 3
    .param p1, "includeGlobalSearch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .line 1131
    :try_start_0
    iget-object v0, p0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v0, p1}, Landroid/app/ISearchManager;->getSearchablesInInsightSearch(Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1132
    :catch_0
    move-exception v0

    .line 1133
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semGetSearchablesInInsightSearch() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist setOnCancelListener(Landroid/app/SearchManager$OnCancelListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/SearchManager$OnCancelListener;

    .line 995
    iput-object p1, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    .line 996
    return-void
.end method

.method public whitelist setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/SearchManager$OnDismissListener;

    .line 984
    iput-object p1, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    .line 985
    return-void
.end method

.method greylist-max-o startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "sourceBounds"    # Landroid/graphics/Rect;

    .line 816
    invoke-virtual {p0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 817
    .local v0, "globalSearchActivity":Landroid/content/ComponentName;
    const-string v1, "SearchManager"

    if-nez v0, :cond_0

    .line 818
    const-string v2, "No global search activity found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return-void

    .line 821
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 822
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 823
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 825
    if-nez p3, :cond_1

    .line 826
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object p3, v3

    goto :goto_0

    .line 828
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p3, v3

    .line 831
    :goto_0
    const-string/jumbo v3, "source"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 832
    iget-object v4, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :cond_2
    const-string v3, "app_data"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 835
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 836
    const-string/jumbo v3, "query"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    :cond_3
    if-eqz p2, :cond_4

    .line 839
    const-string/jumbo v3, "select_query"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 841
    :cond_4
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 844
    :try_start_0
    iget-object v3, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    goto :goto_1

    .line 845
    :catch_0
    move-exception v3

    .line 846
    .local v3, "ex":Landroid/content/ActivityNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Global search activity not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    .end local v3    # "ex":Landroid/content/ActivityNotFoundException;
    :goto_1
    return-void
.end method

.method public whitelist startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V
    .locals 7
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "launchActivity"    # Landroid/content/ComponentName;
    .param p4, "appSearchData"    # Landroid/os/Bundle;
    .param p5, "globalSearch"    # Z

    .line 772
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;ZLandroid/graphics/Rect;)V

    .line 774
    return-void
.end method

.method public greylist startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;ZLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "launchActivity"    # Landroid/content/ComponentName;
    .param p4, "appSearchData"    # Landroid/os/Bundle;
    .param p5, "globalSearch"    # Z
    .param p6, "sourceBounds"    # Landroid/graphics/Rect;

    .line 789
    if-eqz p5, :cond_0

    .line 790
    invoke-virtual {p0, p1, p2, p4, p6}, Landroid/app/SearchManager;->startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;Landroid/graphics/Rect;)V

    .line 791
    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 796
    .local v0, "uiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 797
    invoke-direct {p0}, Landroid/app/SearchManager;->ensureSearchDialog()V

    .line 799
    iget-object v1, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/app/SearchDialog;->show(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z

    .line 801
    :cond_1
    return-void
.end method

.method public whitelist stopSearch()V
    .locals 1

    .line 931
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {v0}, Landroid/app/SearchDialog;->cancel()V

    .line 934
    :cond_0
    return-void
.end method

.method public whitelist triggerSearch(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "launchActivity"    # Landroid/content/ComponentName;
    .param p3, "appSearchData"    # Landroid/os/Bundle;

    .line 909
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 913
    :cond_0
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 914
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->launchQuerySearch()V

    .line 915
    return-void

    .line 910
    :cond_1
    :goto_0
    const-string v0, "SearchManager"

    const-string/jumbo v1, "triggerSearch called with empty query, ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return-void
.end method
