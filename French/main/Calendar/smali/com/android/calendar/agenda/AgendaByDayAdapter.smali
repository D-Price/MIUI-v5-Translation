.class public Lcom/android/calendar/agenda/AgendaByDayAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;,
        Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;,
        Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mFormatter:Ljava/util/Formatter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mTZUpdater:Ljava/lang/Runnable;

.field private mTimeZone:Ljava/lang/String;

.field private mTmpTime:Landroid/text/format/Time;

.field private mTodayJulianDay:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 66
    new-instance v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/agenda/AgendaByDayAdapter$1;-><init>(Lcom/android/calendar/agenda/AgendaByDayAdapter;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTZUpdater:Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Lcom/android/calendar/agenda/AgendaAdapter;

    const v1, 0x7f040008

    invoke-direct {v0, p1, v1}, Lcom/android/calendar/agenda/AgendaAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    .line 78
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 80
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mFormatter:Ljava/util/Formatter;

    .line 81
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/agenda/AgendaByDayAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/agenda/AgendaByDayAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/agenda/AgendaByDayAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/agenda/AgendaByDayAdapter;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    return-object p1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 714
    const/4 v0, 0x0

    return v0
.end method

.method public calculateDays(Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)V
    .locals 54
    .parameter "dayAdapterInfo"

    .prologue
    .line 344
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    move-object/from16 v41, v0

    .line 345
    .local v41, cursor:Landroid/database/Cursor;
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v51, rowInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;>;"
    const/16 v50, -0x1

    .line 348
    .local v50, prevStartDay:I
    new-instance v53, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-direct {v0, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 349
    .local v53, tempTime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    .line 350
    .local v48, now:J
    move-object/from16 v0, v53

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 351
    move-object/from16 v0, v53

    iget-wide v4, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, v48

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTodayJulianDay:I

    .line 353
    new-instance v45, Ljava/util/LinkedList;

    invoke-direct/range {v45 .. v45}, Ljava/util/LinkedList;-><init>()V

    .line 354
    .local v45, multipleDayList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;>;"
    const/16 v17, 0x0

    .local v17, position:I
    :goto_0
    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 355
    const/16 v4, 0xa

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    .line 356
    .local v52, startDay:I
    const/16 v4, 0x9

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 357
    .local v18, id:J
    const/4 v4, 0x7

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 358
    .local v20, startTime:J
    const/16 v4, 0x8

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 359
    .local v22, endTime:J
    const/4 v4, 0x0

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 360
    .local v24, instanceId:J
    const/4 v4, 0x3

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v26, 0x1

    .line 361
    .local v26, allDay:Z
    :goto_1
    if-eqz v26, :cond_0

    .line 362
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v53

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2, v4}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v20

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v53

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2, v4}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v22

    .line 366
    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v0, v52

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v52

    .line 369
    move-object/from16 v0, v53

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v39

    .line 370
    .local v39, adapterStartTime:J
    move-wide/from16 v0, v20

    move-wide/from16 v2, v39

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    .line 372
    move/from16 v0, v52

    move/from16 v1, v50

    if-eq v0, v1, :cond_2

    .line 374
    const/4 v4, -0x1

    move/from16 v0, v50

    if-ne v0, v4, :cond_5

    .line 375
    new-instance v4, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x0

    move/from16 v0, v52

    invoke-direct {v4, v5, v0}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_1
    :goto_2
    move/from16 v50, v52

    .line 422
    :cond_2
    new-instance v14, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/4 v15, 0x1

    move/from16 v16, v52

    invoke-direct/range {v14 .. v26}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(IIIJJJJZ)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    const/16 v4, 0xb

    move-object/from16 v0, v41

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 430
    .local v29, endDay:I
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v0, v29

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 431
    move/from16 v0, v29

    move/from16 v1, v52

    if-le v0, v1, :cond_3

    .line 432
    new-instance v27, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v53

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2, v4}, Lcom/android/calendar/Utils;->getNextMidnight(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v32

    move/from16 v28, v17

    move-wide/from16 v30, v18

    move-wide/from16 v34, v22

    move-wide/from16 v36, v24

    move/from16 v38, v26

    invoke-direct/range {v27 .. v38}, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;-><init>(IIJJJJZ)V

    move-object/from16 v0, v45

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 360
    .end local v26           #allDay:Z
    .end local v29           #endDay:I
    .end local v39           #adapterStartTime:J
    :cond_4
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 380
    .restart local v26       #allDay:Z
    .restart local v39       #adapterStartTime:J
    :cond_5
    const/16 v42, 0x0

    .line 381
    .local v42, dayHeaderAdded:Z
    add-int/lit8 v6, v50, 0x1

    .local v6, currentDay:I
    :goto_3
    move/from16 v0, v52

    if-gt v6, v0, :cond_a

    .line 382
    const/16 v42, 0x0

    .line 383
    invoke-virtual/range {v45 .. v45}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v44

    .line 384
    .local v44, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;>;"
    :goto_4
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 385
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;

    .line 388
    .local v43, info:Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    if-ge v4, v6, :cond_6

    .line 389
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 395
    :cond_6
    if-nez v42, :cond_7

    .line 396
    new-instance v4, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    const/16 v42, 0x1

    .line 399
    :cond_7
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-static {v0, v4, v5, v7}, Lcom/android/calendar/Utils;->getNextMidnight(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v46

    .line 402
    .local v46, nextMidnight:J
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    if-ne v4, v6, :cond_8

    move-object/from16 v0, v43

    iget-wide v12, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventEndTimeMilli:J

    .line 404
    .local v12, infoEndTime:J
    :goto_5
    new-instance v4, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x1

    move-object/from16 v0, v43

    iget v7, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move-object/from16 v0, v43

    iget-wide v8, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventId:J

    move-object/from16 v0, v43

    iget-wide v10, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    move-object/from16 v0, v43

    iget-wide v14, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mInstanceId:J

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mAllDay:Z

    move/from16 v16, v0

    invoke-direct/range {v4 .. v16}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(IIIJJJJZ)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    move-wide/from16 v0, v46

    move-object/from16 v2, v43

    iput-wide v0, v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    goto :goto_4

    .end local v12           #infoEndTime:J
    :cond_8
    move-wide/from16 v12, v46

    .line 402
    goto :goto_5

    .line 381
    .end local v43           #info:Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;
    .end local v46           #nextMidnight:J
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 414
    .end local v44           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;>;"
    :cond_a
    if-nez v42, :cond_1

    .line 415
    new-instance v4, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x0

    move/from16 v0, v52

    invoke-direct {v4, v5, v0}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 440
    .end local v6           #currentDay:I
    .end local v18           #id:J
    .end local v20           #startTime:J
    .end local v22           #endTime:J
    .end local v24           #instanceId:J
    .end local v26           #allDay:Z
    .end local v39           #adapterStartTime:J
    .end local v42           #dayHeaderAdded:Z
    .end local v52           #startDay:I
    :cond_b
    if-lez v50, :cond_10

    .line 441
    add-int/lit8 v6, v50, 0x1

    .restart local v6       #currentDay:I
    :goto_6
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt v6, v4, :cond_10

    .line 443
    const/16 v42, 0x0

    .line 444
    .restart local v42       #dayHeaderAdded:Z
    invoke-virtual/range {v45 .. v45}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v44

    .line 445
    .restart local v44       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;>;"
    :goto_7
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 446
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;

    .line 449
    .restart local v43       #info:Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    if-ge v4, v6, :cond_c

    .line 450
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 456
    :cond_c
    if-nez v42, :cond_d

    .line 457
    new-instance v4, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(II)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    const/16 v42, 0x1

    .line 460
    :cond_d
    move-object/from16 v0, v43

    iget-wide v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-static {v0, v4, v5, v7}, Lcom/android/calendar/Utils;->getNextMidnight(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v46

    .line 462
    .restart local v46       #nextMidnight:J
    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    if-ne v4, v6, :cond_e

    move-object/from16 v0, v43

    iget-wide v12, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventEndTimeMilli:J

    .line 464
    .restart local v12       #infoEndTime:J
    :goto_8
    new-instance v4, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    const/4 v5, 0x1

    move-object/from16 v0, v43

    iget v7, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move-object/from16 v0, v43

    iget-wide v8, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventId:J

    move-object/from16 v0, v43

    iget-wide v10, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    move-object/from16 v0, v43

    iget-wide v14, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mInstanceId:J

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mAllDay:Z

    move/from16 v16, v0

    invoke-direct/range {v4 .. v16}, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;-><init>(IIIJJJJZ)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    move-wide/from16 v0, v46

    move-object/from16 v2, v43

    iput-wide v0, v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;->mEventStartTimeMilli:J

    goto :goto_7

    .end local v12           #infoEndTime:J
    :cond_e
    move-wide/from16 v12, v46

    .line 462
    goto :goto_8

    .line 442
    .end local v43           #info:Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;
    .end local v46           #nextMidnight:J
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 472
    .end local v6           #currentDay:I
    .end local v42           #dayHeaderAdded:Z
    .end local v44           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaByDayAdapter$MultipleDayInfo;>;"
    :cond_10
    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 473
    return-void
.end method

.method public changeCursor(Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->calculateDays(Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 340
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    iget-object v1, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/calendar/agenda/AgendaAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 341
    return-void
.end method

.method public findEventPositionNearestTime(Landroid/text/format/Time;J)I
    .locals 22
    .parameter "time"
    .parameter "id"

    .prologue
    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 551
    const/4 v11, 0x0

    .line 629
    :cond_0
    :goto_0
    return v11

    .line 553
    :cond_1
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v13

    .line 554
    .local v13, millis:J
    const-wide/32 v16, 0x7fffffff

    .line 555
    .local v16, minDistance:J
    const-wide/32 v2, 0x7fffffff

    .line 556
    .local v2, IdFoundMinDistance:J
    const/16 v18, 0x0

    .line 557
    .local v18, minIndex:I
    const/4 v10, 0x0

    .line 558
    .local v10, idFoundMinIndex:I
    const/4 v8, -0x1

    .line 559
    .local v8, eventInTimeIndex:I
    const/4 v5, -0x1

    .line 560
    .local v5, allDayEventInTimeIndex:I
    const/4 v4, 0x0

    .line 561
    .local v4, allDayEventDay:I
    const/4 v15, 0x0

    .line 562
    .local v15, minDay:I
    const/4 v9, 0x0

    .line 563
    .local v9, idFound:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 573
    .local v12, len:I
    const/4 v11, 0x0

    .local v11, index:I
    :goto_1
    if-ge v11, v12, :cond_8

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 575
    .local v19, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    move/from16 v20, v0

    if-nez v20, :cond_3

    .line 573
    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 580
    :cond_3
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventId:J

    move-wide/from16 v20, v0

    cmp-long v20, v20, p2

    if-nez v20, :cond_5

    .line 581
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    move-wide/from16 v20, v0

    cmp-long v20, v20, v13

    if-eqz v20, :cond_0

    .line 586
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    move-wide/from16 v20, v0

    sub-long v20, v13, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 587
    .local v6, distance:J
    cmp-long v20, v6, v16

    if-gez v20, :cond_4

    .line 588
    move-wide v2, v6

    .line 589
    move v10, v11

    .line 591
    :cond_4
    const/4 v9, 0x1

    .line 593
    .end local v6           #distance:J
    :cond_5
    if-nez v9, :cond_2

    .line 595
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    move-wide/from16 v20, v0

    cmp-long v20, v13, v20

    if-ltz v20, :cond_7

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventEndTimeMilli:J

    move-wide/from16 v20, v0

    cmp-long v20, v13, v20

    if-gtz v20, :cond_7

    .line 596
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mAllDay:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 597
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_2

    .line 598
    move v5, v11

    .line 599
    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    goto :goto_2

    .line 601
    :cond_6
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_2

    .line 602
    move v8, v11

    goto :goto_2

    .line 604
    :cond_7
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_2

    .line 606
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    move-wide/from16 v20, v0

    sub-long v20, v13, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 607
    .restart local v6       #distance:J
    cmp-long v20, v6, v16

    if-gez v20, :cond_2

    .line 608
    move-wide/from16 v16, v6

    .line 609
    move/from16 v18, v11

    .line 610
    move-object/from16 v0, v19

    iget v15, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    goto :goto_2

    .line 617
    .end local v6           #distance:J
    .end local v19           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_8
    if-eqz v9, :cond_9

    move v11, v10

    .line 618
    goto/16 :goto_0

    .line 621
    :cond_9
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v8, v0, :cond_a

    move v11, v8

    .line 622
    goto/16 :goto_0

    .line 625
    :cond_a
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v5, v0, :cond_b

    if-eq v15, v4, :cond_b

    move v11, v5

    .line 626
    goto/16 :goto_0

    :cond_b
    move/from16 v11, v18

    .line 629
    goto/16 :goto_0
.end method

.method public findJulianDayFromPosition(I)I
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 655
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    if-gez p1, :cond_1

    .line 668
    :cond_0
    :goto_0
    return v3

    .line 659
    :cond_1
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 660
    .local v1, len:I
    if-ge p1, v1, :cond_0

    .line 662
    move v0, p1

    .local v0, index:I
    :goto_1
    if-ltz v0, :cond_0

    .line 663
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 664
    .local v2, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    iget v4, v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v4, :cond_2

    .line 665
    iget v3, v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    goto :goto_0

    .line 662
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 125
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getCursorPosition(I)I
    .locals 4
    .parameter "listPos"

    .prologue
    .line 695
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-ltz p1, :cond_1

    .line 696
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 697
    .local v1, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    iget v2, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 698
    iget v2, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mPosition:I

    .line 709
    .end local v1           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :goto_0
    return v2

    .line 700
    .restart local v1       #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 701
    .local v0, nextPos:I
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 702
    invoke-virtual {p0, v0}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v0

    .line 703
    if-ltz v0, :cond_1

    .line 704
    neg-int v2, v0

    goto :goto_0

    .line 709
    .end local v0           #nextPos:I
    .end local v1           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_1
    const/high16 v2, -0x8000

    goto :goto_0
.end method

.method public getHeaderItemsCount(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 108
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 109
    const/4 v0, -0x1

    .line 118
    :cond_0
    return v0

    .line 111
    :cond_1
    const/4 v0, 0x0

    .line 112
    .local v0, count:I
    add-int/lit8 v1, p1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    iget v2, v2, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 116
    add-int/lit8 v0, v0, 0x1

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHeaderPosition(I)I
    .locals 4
    .parameter "position"

    .prologue
    const/4 v2, -0x1

    .line 94
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_2

    :cond_0
    move v0, v2

    .line 103
    :cond_1
    :goto_0
    return v0

    .line 98
    :cond_2
    move v0, p1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 99
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 100
    .local v1, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    if-eqz v1, :cond_3

    iget v3, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-eqz v3, :cond_1

    .line 98
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_4
    move v0, v2

    .line 103
    goto :goto_0
.end method

.method public getInstanceId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 87
    :cond_0
    const-wide/16 v0, -0x1

    .line 89
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mInstanceId:J

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 131
    .local v0, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 137
    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :goto_0
    return-object v0

    .line 134
    .restart local v0       #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 137
    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/agenda/AgendaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 143
    .local v0, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 144
    neg-int v1, p1

    int-to-long v1, v1

    .line 149
    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :goto_0
    return-wide v1

    .line 146
    .restart local v0       #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0

    .line 149
    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/agenda/AgendaAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    iget v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p1

    if-le v0, v3, :cond_1

    .line 170
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/calendar/agenda/AgendaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 327
    :goto_0
    return-object v11

    .line 173
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 174
    .local v21, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v3, :cond_6

    .line 175
    const/16 v18, 0x0

    .line 176
    .local v18, holder:Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    const/4 v11, 0x0

    .line 177
    .local v11, agendaDayView:Landroid/view/View;
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    .line 181
    .local v22, tag:Ljava/lang/Object;
    move-object/from16 v0, v22

    instance-of v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;

    if-eqz v3, :cond_2

    .line 182
    move-object/from16 v11, p2

    move-object/from16 v18, v22

    .line 183
    check-cast v18, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;

    .line 184
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->julianDay:I

    .line 188
    .end local v22           #tag:Ljava/lang/Object;
    :cond_2
    if-nez v18, :cond_3

    .line 191
    new-instance v18, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;

    .end local v18           #holder:Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    invoke-direct/range {v18 .. v18}, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;-><init>()V

    .line 192
    .restart local v18       #holder:Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040005

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 193
    const v3, 0x7f10000c

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    .line 194
    const v3, 0x7f10000d

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 195
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->julianDay:I

    .line 196
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->grayed:Z

    .line 197
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 204
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v24

    .line 205
    .local v24, tz:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    iget-object v3, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 206
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    .line 207
    new-instance v3, Landroid/text/format/Time;

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    .line 213
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    .line 214
    .local v14, date:Landroid/text/format/Time;
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    invoke-virtual {v14, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v5

    .line 215
    .local v5, millis:J
    const/4 v9, 0x2

    .line 216
    .local v9, flags:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 218
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTodayJulianDay:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/calendar/Utils;->getDayOfWeekString(IIJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 224
    .local v17, dayViewText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 225
    const/16 v9, 0x10

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    move-wide v7, v5

    invoke-static/range {v3 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v15

    .line 233
    .local v15, dateViewText:Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTodayJulianDay:I

    if-le v3, v4, :cond_5

    .line 238
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->grayed:Z

    .line 242
    :goto_1
    const/16 v3, 0x8

    invoke-static {v11, v3}, Lcom/android/calendar/Utils;->setAllChildrenVisibility(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 240
    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;->grayed:Z

    goto :goto_1

    .line 244
    .end local v5           #millis:J
    .end local v9           #flags:I
    .end local v11           #agendaDayView:Landroid/view/View;
    .end local v14           #date:Landroid/text/format/Time;
    .end local v15           #dateViewText:Ljava/lang/String;
    .end local v17           #dayViewText:Ljava/lang/String;
    .end local v18           #holder:Lcom/android/calendar/agenda/AgendaByDayAdapter$ViewHolder;
    .end local v24           #tz:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mAgendaAdapter:Lcom/android/calendar/agenda/AgendaAdapter;

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mPosition:I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/calendar/agenda/AgendaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 246
    .local v19, itemView:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 247
    .local v18, holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v23, v0

    .line 251
    .local v23, title:Landroid/widget/TextView;
    move-object/from16 v0, v21

    iget-wide v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    move-object/from16 v0, v18

    iput-wide v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->startTimeMilli:J

    .line 252
    move-object/from16 v0, v18

    iget-boolean v12, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->allDay:Z

    .line 256
    .local v12, allDay:Z
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    if-nez v12, :cond_7

    move-object/from16 v0, v21

    iget-wide v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v3, v3, v7

    if-lez v3, :cond_8

    :cond_7
    if-eqz v12, :cond_b

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTodayJulianDay:I

    if-gt v3, v4, :cond_b

    .line 262
    :cond_8
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->textContainer:Landroid/view/ViewGroup;

    const v4, 0x7f080001

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 263
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->dayContainer:Landroid/view/ViewGroup;

    const v4, 0x7f080003

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 264
    const/4 v3, 0x1

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->grayed:Z

    .line 270
    :goto_2
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->julianDay:I

    .line 273
    const/16 v16, 0x0

    .line 274
    .local v16, day:I
    if-lez p1, :cond_9

    .line 275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 276
    .local v20, preRow:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v3, :cond_9

    .line 277
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    move/from16 v16, v0

    .line 280
    .end local v20           #preRow:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_9
    if-lez v16, :cond_d

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v24

    .line 286
    .restart local v24       #tz:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    iget-object v3, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 287
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTimeZone:Ljava/lang/String;

    .line 288
    new-instance v3, Landroid/text/format/Time;

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    .line 294
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTmpTime:Landroid/text/format/Time;

    .line 295
    .restart local v14       #date:Landroid/text/format/Time;
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v5

    .line 296
    .restart local v5       #millis:J
    const/4 v9, 0x2

    .line 297
    .restart local v9       #flags:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 299
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTodayJulianDay:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/calendar/Utils;->getDayOfWeekString(IIJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    .line 304
    .local v25, weekViewText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 305
    const/16 v9, 0x10

    .line 306
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%02d.%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v10, v14, Landroid/text/format/Time;->monthDay:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    const/4 v8, 0x1

    iget v10, v14, Landroid/text/format/Time;->month:I

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v3, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 308
    .restart local v15       #dateViewText:Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->week:Landroid/widget/TextView;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mTodayJulianDay:I

    move/from16 v0, v16

    if-ne v0, v3, :cond_c

    .line 312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08006e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 313
    .local v13, colors:Landroid/content/res/ColorStateList;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 315
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->week:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .end local v5           #millis:J
    .end local v9           #flags:I
    .end local v13           #colors:Landroid/content/res/ColorStateList;
    .end local v14           #date:Landroid/text/format/Time;
    .end local v15           #dateViewText:Ljava/lang/String;
    .end local v24           #tz:Ljava/lang/String;
    .end local v25           #weekViewText:Ljava/lang/String;
    :goto_3
    move-object/from16 v11, v19

    .line 327
    goto/16 :goto_0

    .line 266
    .end local v16           #day:I
    :cond_b
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->textContainer:Landroid/view/ViewGroup;

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 267
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->dayContainer:Landroid/view/ViewGroup;

    const v4, 0x7f080002

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 268
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->grayed:Z

    goto/16 :goto_2

    .line 317
    .restart local v5       #millis:J
    .restart local v9       #flags:I
    .restart local v14       #date:Landroid/text/format/Time;
    .restart local v15       #dateViewText:Ljava/lang/String;
    .restart local v16       #day:I
    .restart local v24       #tz:Ljava/lang/String;
    .restart local v25       #weekViewText:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 318
    .restart local v13       #colors:Landroid/content/res/ColorStateList;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 320
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->week:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    .line 323
    .end local v5           #millis:J
    .end local v9           #flags:I
    .end local v13           #colors:Landroid/content/res/ColorStateList;
    .end local v14           #date:Landroid/text/format/Time;
    .end local v15           #dateViewText:Ljava/lang/String;
    .end local v24           #tz:Ljava/lang/String;
    .end local v25           #weekViewText:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->date:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->week:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 330
    .end local v12           #allDay:Z
    .end local v16           #day:I
    .end local v18           #holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    .end local v19           #itemView:Landroid/view/View;
    .end local v23           #title:Landroid/widget/TextView;
    :cond_e
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown event type:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x2

    return v0
.end method

.method public isDayHeaderView(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 719
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 720
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 721
    .local v0, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    iget v2, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    if-ne v2, v1, :cond_1

    .line 723
    .end local v0           #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_0
    :goto_0
    return v1

    .line 721
    .restart local v0       #row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFirstDayAfterYesterday(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 640
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getHeaderPosition(I)I

    move-result v0

    .line 641
    .local v0, headerPos:I
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 642
    .local v1, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    if-eqz v1, :cond_0

    .line 643
    iget-boolean v2, v1, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mFirstDayAfterYesterday:Z

    .line 645
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setAsFirstDayAfterYesterday(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 678
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;

    .line 682
    .local v0, row:Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mFirstDayAfterYesterday:Z

    goto :goto_0
.end method
