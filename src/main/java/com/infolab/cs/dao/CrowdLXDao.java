package com.infolab.cs.dao;

import java.util.LinkedHashMap;
import java.util.List;

import com.infolab.cs.model.WorkerDto;

public interface CrowdLXDao {
		
	
	public WorkerDto getWorkerInfoDao(WorkerDto workerInfo);
	public WorkerDto getWorkerMissionCnt(WorkerDto workerInfo);
	
	public int insertWorkerInfo(WorkerDto workerInfo);
	public int updateWorkerInfo(WorkerDto workerInfo);
	
	public int updateWorkerPasswd(WorkerDto workerInfo);
	
	public List<LinkedHashMap<String, Object>> getPretrainedList();
	public List<LinkedHashMap<String, Object>> getPairwiseDao();
	
	public List<LinkedHashMap<String, Object>> getEvalTaskList(WorkerDto workerInfo);
	
	public List<LinkedHashMap<String, Object>> getTutorialTaskList();
	
	public List<Integer> getResultTaskList();
	
	public int getRandomTaskIdCnt();
	
	public int getRandomTaskId();
	
	public int insertEvalResultDao(WorkerDto workerInfo);	
	
	public int insertTaskResult(WorkerDto workerInfo);
	
	public int updateTaskResult(WorkerDto workerInfo);
	
	public int updateTutorialResult(WorkerDto workerInfo);
	
	public int insertTaskList(WorkerDto workerInfo);
	
	public int insertData(WorkerDto workerInfo);
	
	
	
	
	public int getTotalTaskCnt();	
	public int getEvalTaskCnt();
	
	public List<LinkedHashMap<String, Object>> getResultInfoList(WorkerDto workerInfo);	
	public List<LinkedHashMap<String, Object>> getTaskAggList();
	public List<LinkedHashMap<String, Object>> getTaskIdResultList(WorkerDto workerInfo);

	public List<LinkedHashMap<String, Object>> getUserList();
	
	
	public List<LinkedHashMap<String, Object>> getImageList();
}
